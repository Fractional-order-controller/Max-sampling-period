function [ O_omega ] = O_omega_fopd( omega,h )
%O_OMEGA Summary of this function goes here
%   Detailed explanation goes here
j=sqrt(-1);
s=tf('s');
%C_io=2.89+1.04/s+1.79*s;
% C_fo=0.6192*s^0.9694+2.6992;
w_L=0.1;w_H=1000;        % frequency of practical interest
r=0.9694;
N=4;
sys_foc=ora_foc(r,N,w_L,w_H);
C_fo=0.6192*sys_foc+2.6992;
P=1.0263/(0.71*s+1)/s;
%omega_length=15;
%omega_range=linspace(10^-5,200,omega_length);
%ceq=0;
%c_matrix=zeros(omega_length,1);
%for m=1:omega_length
    %omega=omega_range(m);
    C_foz=c2d(C_fo,h,'tustin');
    P_z=c2d(P,h,'tustin');
    sysz=P_alias(omega,h)*C_foz/(1+P_z*C_foz);
    [mag,~]=bode(sysz,omega);
    O_omega=-mag+1/abs(exp(j*omega)-1);
%end
%c=sum(sum(c_matrix));


end

