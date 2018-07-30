s=tf('s');
sys=1.0263/(0.71*s+1)/s;
h=0.1;
omega=2;
k_range=-100:1:100;
mag=zeros(201,1);
for n=1:201
k=k_range(n);
[mag(n),~]=bode(sys,(omega+2*pi*k)/h);
end
P_alias=sum(sum(mag.^2));

