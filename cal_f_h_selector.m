function [omega, f_h ] = cal_f_h_selector(h,controller_type)
% This function is used to auto-select which function to use.
if length(controller_type) == 4 %&& 'FOPD' == controller_type
    [omega, f_h]=cal_f_h_fopd(h);
elseif length(controller_type) == 5 %&& 'IOPID' == controller_type
    [omega, f_h]=cal_f_h(h);
else
    fprintf('Error controller type.');
end


end