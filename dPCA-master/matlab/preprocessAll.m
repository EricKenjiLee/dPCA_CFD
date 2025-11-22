function D = preprocessAll(firingRatesAverage, firingRatesAverageCorrect, firingRatesAverageError)
%
%
%
%

currData = firingRatesAverage;
D.processedFR = [];
D.processedFRcorrect = [];
D.processedFRerror = [];

nCond1 = size(currData,2);
nCond2 = size(currData,3);

for neuronId = 1:size(currData,1)
    if mod(neuronId,500) == 0
        fprintf('.%d',neuronId);
    end
    currNeuronData = squeeze(currData(neuronId,:,:,:));
    currCorrect = squeeze(firingRatesAverageCorrect(neuronId,:,:,:));
    currError = squeeze(firingRatesAverageError(neuronId,:,:,:));

    %%%%%%%%%%%%% normalize the data (divided by sqrt of 99% ile of each unit separately)
    normFactor = prctile(currNeuronData(:), 99) + 2;
    normFactor = 1;
    currNeuronData = currNeuronData./sqrt(normFactor);
    currCorrect = currCorrect./sqrt(normFactor);
    currError = currError./sqrt(normFactor);
    %%%%%%%%%%%%%

    average = mean(mean(currNeuronData));
    temp2 = [];
    tempCorrect = [];
    tempError = [];
    for cond1Id = 1:nCond1
        for cond2Id = 1:nCond2
            temp2 = [temp2 squeeze(currNeuronData(cond1Id, cond2Id,:) - average)'];
            tempCorrect = [tempCorrect (squeeze(currCorrect(cond1Id,cond2Id,:))- squeeze(average))'];
            tempError = [tempError (squeeze(currError(cond1Id,cond2Id,:))- squeeze(average))'];
        end
    end

    D.processedFR(neuronId,:) = temp2;
    D.processedFRcorrect(neuronId,:) = tempCorrect;
    D.processedFRerror(neuronId,:) = tempError;
end



end