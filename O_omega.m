function [ O_omega ] = O_omega( omega,h )
%O_OMEGA Summary of this function goes here
%   Detailed explanation goes here
j=sqrt(-1);
s=tf('s');
C_io=2.89+1.04/s+1.79*s;
P=1.0263/(0.71*s+1)/s;
%omega_length=15;
%omega_range=linspace(10^-5,200,omega_length);
%ceq=0;
%c_matrix=zeros(omega_length,1);
%for m=1:omega_length
    %omega=omega_range(m);
    C_ioz=c2d(C_io,h,'tustin');
    P_z=c2d(P,h,'tustin');
    sysz=P_alias(omega,h)*C_ioz/(1+P_z*C_ioz);
    [mag,~]=bode(sysz,omega);
    O_omega=-mag+1/abs(exp(j*omega)-1);
%end
%c=sum(sum(c_matrix));


end

