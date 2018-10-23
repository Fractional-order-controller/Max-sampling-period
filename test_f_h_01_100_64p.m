%% IOPID max period estimating template
% This is a template for estimating largest sampling period of IOPID controller. 
% Change this file and save to a new script.

tic
clc;clear;
array_size=64;
h=linspace(0.1,10,array_size); %Change here
omega=zeros(length(h),1);
f_h=zeros(length(h),1);
for n=1:array_size
    fprintf('=========================\n');
    fprintf('Step: %d/%d',n,array_size)
%     disp(['Step: ' num2str(n) '/' array_size]);
    [ omega(n),f_h(n) ]=cal_f_h(h(n));
    disp(['h=' num2str(h(n))]);
    disp(['f_h=' num2str(f_h(n))]);
end
plot(h,f_h,'-o');
xlabel('h');
ylabel('f(h)');
%axis([0 1.5 0 10]);
% Change the file names.
saveas(gcf,'f_h_iopid_01_100_64.fig')
saveas(gcf,'f_h_iopid_01_100_64.png')
disp('Figure saved.')
toc