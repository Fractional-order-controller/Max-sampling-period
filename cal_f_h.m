function [ omega,f_h ] = cal_f_h( h )
%CAL_F_H Summary of this function goes here
%   Detailed explanation goes here
% h=0.3 by default
omega_0=2;
lb=10^-5;
ub=10^4;
options =optimset('Largescale','off','Display','iter');
[omega,fval]=fmincon(@(omega)O_omega(omega,h),omega_0,[],[],[],[],lb,ub,[],options);
f_h=-fval;

end

