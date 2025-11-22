monkey = 'bilbo';
align = 'checkerboard';

switch(monkey)
    case 'bilbo'
        sessData = returnSessionData_Bilbo();
    case 'tiberius'
        sessData = returnSessionData_Tibs();
end      

switch(align)
    case 'checkerboard'
        pre = -0.4;
        post = 1.5;

    case 'targets'
        pre = -0.8;
        post = 0.4;
end


firingRatesAverage = [];
firingRatesAverageError = [];
firingRatesAverageCorrect = [];

for m=1:length(sessData)
    currData = returnSessionFiringRatesPerCoherence(sessData(m),align,pre,post,'all');
    firingRatesAverage = cat(1, firingRatesAverage, currData);

    currDataError = returnSessionFiringRatesPerCoherence(sessData(m),align,pre,post,'wrong');
    firingRatesAverageError = cat(1, firingRatesAverageError, currDataError);

    currDataCorrect = returnSessionFiringRatesPerCoherence(sessData(m),align,pre,post,'correct');
    firingRatesAverageCorrect = cat(1, firingRatesAverageCorrect, currDataCorrect);
end

%firingRatesAverage arranged as Neurons by Color by Coherence by Time
% Color: Red then Green; Coherence: Easy, Medium, Hard

preCut = pre + 0.2;
postCut = post-0.2;

time = [preCut*1000:postCut*1000-1];
timeEvents = 0;


%%
D = preprocessAll(firingRatesAverage, firingRatesAverageCorrect, firingRatesAverageError);  

test = D.processedFR';
[coeff, score, latent] = pca(test);

m = size(firingRatesAverage,2)*size(firingRatesAverage,3);
t = size(firingRatesAverage,4);

scoreError = D.processedFRerror'*coeff;
scoreCorrect = D.processedFRcorrect'*coeff;

orthF = [];
orthFerror = [];
orthFcorrect = [];

for thi = 1 : m
    orthF(:,:,thi) = (score( (1:t) + (thi-1)*t, :))';
    orthFerror(:,:,thi) = (scoreError( (1:t) + (thi-1)*t, :))';
    orthFcorrect(:,:,thi) = (scoreCorrect( (1:t) + (thi-1)*t, :))';
end


%%

subplot(1,4,1)
hold on
plot(time,sum([squeeze(orthFcorrect(1:10,:,4)-orthFcorrect(1:10,:,8))].^2),'k--')
plot(time,sum([squeeze(orthFerror(1:10,:,4)-orthFerror(1:10,:,8))].^2),'m--')
hold off

subplot(1,4,2)
hold on
plot(time,sum([squeeze(orthFcorrect(1:10,:,3)-orthFcorrect(1:10,:,7))].^2),'k-')
plot(time,sum([squeeze(orthFerror(1:10,:,3)-orthFerror(1:10,:,7))].^2),'m-')
hold off

subplot(1,4,3)
hold on
plot(time,sum([squeeze(orthFcorrect(1:10,:,2)-orthFcorrect(1:10,:,6))].^2),'k.')
plot(time,sum([squeeze(orthFerror(1:10,:,2)-orthFerror(1:10,:,6))].^2),'m.')
hold off

subplot(1,4,4)
hold on
plot(time,sum([squeeze(orthFcorrect(1:10,:,1)-orthFcorrect(1:10,:,5))].^2),'ko')
plot(time,sum([squeeze(orthFerror(1:10,:,1)-orthFerror(1:10,:,5))].^2),'mo')
hold off

set(gcf,'position',[500,500,2000,400])