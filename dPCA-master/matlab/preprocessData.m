function processedFR = preprocessData(firingRatesAverage)

currData = firingRatesAverage;
processedFR = [];
CIsub = [];
for ii = 1:size(currData,1)
    if mod(ii,500) == 0
        fprintf('.%d',ii);
    end
    temp = squeeze(currData(ii,:,:,:));
    unnorm = squeeze(currData(ii,:,:,:));
    %%%%%%%%%%%%% normalize the data (divided by sqrt of 99% ile of each unit separately)
    normFactor = prctile(temp(:), 95) + 3;
    temp = temp./sqrt(normFactor);
    %%%%%%%%%%%%%

    average = mean(mean(temp));
    temp2 = [];
    for jj = 1:2
        for kk = 1:4
            temp2 = [temp2 squeeze(temp(jj, kk,:) - average)'];
            perCondition = squeeze(unnorm(jj, kk,:) - average)';
            CIsub(ii,jj,kk,:) = perCondition;
        end
    end
    processedFR(ii,:) = temp2;
end



end