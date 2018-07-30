tic
omega_length=15;
h_length=12;
y=zeros(omega_length,h_length);
omega_range=linspace(90,110,omega_length);
h_range=linspace(1,10,h_length);
for m=1:omega_length
    omega=omega_range(m);
    for n=1:h_length
        h=h_range(n);
        y(m,n)=P_alias(omega,h);
    end
end
toc
