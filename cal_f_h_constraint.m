function [ f_h,ceq] = cal_f_h_constraint( h )
%CAL_F_H Summary of this function goes here
%   Detailed explanation goes here
% h=0.3 by default
omega_0=3.14;
lb=10^-5;
ub=10^4;
options =optimoptions(@fmincon,...
    'Display','iter',...
    'ConstraintTolerance',10^-2,...
    'PlotFcn',[@optimplotfval],...
    'UseParallel',1);
[~,fval]=fmincon(@(omega)O_omega(omega,h),omega_0,[],[],[],[],lb,ub,[],options);
f_h=-fval;
ceq=0;
end

