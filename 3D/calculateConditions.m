function calculateConditions()
% velocity time degree
global TRIALINFO

td = [sort(repmat(TRIALINFO.time',length(TRIALINFO.degree),1)), repmat(TRIALINFO.degree',length(TRIALINFO.time),1)];
vtd = [sort(repmat(TRIALINFO.velocity',size(td,1),1)), repmat(td,length(TRIALINFO.velocity),1)];

TRIALINFO.conditions = vtd;