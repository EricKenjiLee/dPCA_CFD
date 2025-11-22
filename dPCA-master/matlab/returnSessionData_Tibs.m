function sessionData = returnSessionData_Tibs(sessionIndices)

% returnSessionData_Tibs - Load Tiberius session metadata
%
% Syntax: sessionData = returnSessionData_Tibs(sessionIndices)
%
% Inputs:
%   sessionIndices - (optional) Integer or range of session indices to return
%                    If empty or not provided, returns all sessions
%                    Examples: 5, [1 3 5], 1:10
%
% Outputs:
%   sessionData - Structure array containing session metadataarguments

arguments
    sessionIndices (:,1) {mustBeInteger, mustBeNonnegative} = []
end% Determine which sessions to include

if isempty(sessionIndices)
    includeAll = true;
    sessionIndices = []; % Won't be used, but kept for clarityurn
else
    includeAll = false;
end% Initialize
sessionData = struct([]);
outIdx = 0; % Output index counter
cnt = 0;    % Canonical session index% Session 1
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20230623';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_NPIX_20230623_1_g0/TIBERIUS_CHKDLAY_DLPFC_NPIX_062223_1_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20230623/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [3];
end% Session 2
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20230628';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_NPIX_20230628_g0/TIBERIUS_CHKDLAY_DLPFC_NPIX_062823_g0_imec0/';
    sessionData(outIdx).kilosortDir = '';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20230628/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 3
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20230629';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_NPIX_20230629_g0/TIBERIUS_CHKDLAY_DLPFC_NPIX_062923_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20230629/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1,2,3];
end% Session 4
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20230630';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_NPIX45_20230630_g0/TIBERIUS_CHKDLAY_DLPFC_NPIX45_063023_g0_imec0/';
    sessionData(outIdx).kilosortDir = '';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20230630/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 5
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240321';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/Tiberius_CHKDLAY_DLPFC_0321_g0/Tiberius_CHKDLAY_DLPFC_0321_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240321/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 6
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240326';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/Tiberius_CHKDLAY_DLPFC_20240326_bank0_g0/Tiberius_CHKDLAY_DLPFC_0326_bank0_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240326/';
    sessionData(outIdx).eventsFile = 'CFDeventStructBank0.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 7
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240326';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/Tiberius_CHKDLAY_DLPFC_20240326_bank1_g0/Tiberius_CHKDLAY_DLPFC_0326_bank1_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240326/';
    sessionData(outIdx).eventsFile = 'CFDeventStructBank1.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [3];
end% Session 8
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240328';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/Tiberius_CHKDLAY_DLPFC_20240328_bank0_1_g0/Tiberius_CHKDLAY_DLPFC_0328_bank0_1_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240328/';
    sessionData(outIdx).eventsFile = 'CFDeventStructBank0.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
end% Session 9
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240328';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/Tiberius_CHKDLAY_DLPFC_20240328_bank1_g0/Tiberius_CHKDLAY_DLPFC_0328_bank1_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240328/';
    sessionData(outIdx).eventsFile = 'CFDeventStructBank1.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [2];
end% Session 10
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240614';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_20240614_g0/TIBERIUS_CHKDLAY_DLPFC_03142024_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240614/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 11
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240821';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_20240821_g0/TIBERIUS_CHKDLAY_DLPFC_20240821_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4_bot/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240821/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 12
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240820';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAYEYE_DLPFC_20240820_g0/TIBERIUS_CHKDLAYEYE_DLPFC_20240820_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240820/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [2];
end% Session 13
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240823';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFC_20240823_g1/TIBERIUS_CHKDLAY_DLPFC_20240823_g1_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240823/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 14
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240906';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFCPMD_20240906_g0/TIBERIUS_CHKDLAY_DLPFCPMD_20240906_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4_bottom/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240906/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end% Session 15
cnt = cnt + 1;
if includeAll || ismember(cnt, sessionIndices)
    outIdx = outIdx + 1;
    sessionData(outIdx).SessionId = '20240910';
    sessionData(outIdx).baseDir = '/home/chandlab/HDD1/NPixExps/TIBERIUS_CHKDLAY_DLPFCPMD_20240910_g0/TIBERIUS_CHKDLAY_DLPFCPMD_20240910_g0_imec0/';
    sessionData(outIdx).kilosortDir = 'kilosort4_top/';
    sessionData(outIdx).eventsDir = '/home/chandlab/HDD1/events/Tiberius/20240910/';
    sessionData(outIdx).eventsFile = 'CFDeventStruct.mat';
    sessionData(outIdx).TaskName = 'CFD';
    sessionData(outIdx).Location = 'DLPFC';
    sessionData(outIdx).savetags = [1];
end
end