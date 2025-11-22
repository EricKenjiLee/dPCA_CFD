baseDir = '~/HDD1/matFiles/'
p = dir([baseDir '*.mat']);
firingRatesAverage = []
for n=1:length(p)
    temp1 = load([baseDir p(n).name]);
    firingRatesAverage = cat(1, firingRatesAverage, temp1.firingRatesAverage);
end
%%

currData = firingRatesAverage;

combinedParams = {{1, [1 3]}, {2, [2 3]}, {3}, {[1 2], [1 2 3]}};
margNames = {'Color', 'Action', 'Condition-independent', 'Color/Action Interaction'};
margColours = [23 100 171; 187 20 25; 150 150 150; 114 97 171]/256;
time = [-600:200-1];
timeEvents = 0;

tic
[W,V,whichMarg] = dpca(currData, 10, ...
    'combinedParams', combinedParams);
toc

explVar = dpca_explainedVariance(currData, W, V, ...
    'combinedParams', combinedParams);

dpca_plot(currData, W, V, @dpca_plot_default, ...
    'explainedVar', explVar, ...
    'marginalizationNames', margNames, ...
    'marginalizationColours', margColours, ...
    'whichMarg', whichMarg,                 ...
    'time', time,                        ...
    'timeEvents', timeEvents,               ...
    'timeMarginalization', 3, ...
    'legendSubplot', 16);

%%
currData = firingRatesAverage;
processedFR = [];
CIsub = [];
for ii = 1:size(currData,1)
    temp = squeeze(currData(ii,:,:,:));
    unnorm = squeeze(currData(ii,:,:,:));
    %%%%%%%%%%%%% normalize the data (divided by sqrt of 99% ile of each unit separately)
    normFactor = prctile(temp(:), 95) + 3;
    temp = temp./sqrt(normFactor);
    %%%%%%%%%%%%%

    average = mean(mean(temp));
    temp2 = [];
    for jj = 1:2
        for kk = 1:2
            temp2 = [temp2 squeeze(temp(jj, kk,:) - average)'];
            perCondition = squeeze(unnorm(jj, kk,:) - average)';
            CIsub(ii,jj,kk,:) = perCondition;
        end
    end
    processedFR(ii,:) = temp2;
end
%%

for k=1:6
    fprintf('%d.',k)
    G = randi(size(processedFR,1),500*k,1);

    
 
    test = processedFR(G,:)';


    [coeff, score, latent] = pca(test);
    m = size(firingRatesAverage,2) + size(firingRatesAverage,3);
    t = size(firingRatesAverage,4);

    orthF = [];
    for thi = 1 : m
        orthF(:,:,thi) = (score( (1:t) + (thi-1)*t, :))';
    end

    figure(1);
    subplot(3,2,k)
    cols = {'r-','r--','g-','g--'};
    for n=1:length(cols)
        hold on;
        plot3(squeeze(orthF(1, :, n)),squeeze(orthF(2, :, n)),squeeze(orthF(3, :, n)), cols{n})
        hold on;
        plot3(squeeze(orthF(1, 600, n)),squeeze(orthF(2, 600, n)),squeeze(orthF(3, 600, n)), 'bo')
    end

    figure(2);
    plot(sum([squeeze(orthF(1:6,:,1)-orthF(1:6,:,3))].^2),'b-');
    hold on;
    plot(sum([squeeze(orthF(1:6,:,1)-orthF(1:6,:,2))].^2),'m-');
    hold on;

    varColor(k,:) = latent(1:6)./sum(latent);
end
%%

for ii = 1:4
    subplot(2,2,ii); hold on
    plot(time, squeeze(orthF(ii, :, 1)), 'r-')
    plot(time, squeeze(orthF(ii, :, 2)), 'r--')
    plot(time,squeeze(orthF(ii, :, 3)), 'g-')
    plot(time, squeeze(orthF(ii, :, 4)), 'g--')
    title(['pc ' num2str(ii)]);
    d = xline(0);
    d.LineStyle = '--';
    d = yline(0);
    d.LineStyle = '--';
end


