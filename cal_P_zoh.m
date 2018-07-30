% Converting the s domain to z domain
s=tf('s');
sys=1.0263/(0.71*s+1)/s;
T=0.1;
%sys=exp(-T*s);
sysz=c2d(sys,T,'zoh');
sysz;
%%
jw=1i*2000;
[mag,phase]=bode(sysz, imag(exp(jw)));



