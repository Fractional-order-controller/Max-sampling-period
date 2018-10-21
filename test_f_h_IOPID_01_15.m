%/Users/standard/Library/Group Containers/
% G69SCX94XU.duck/Library/Application Support/
% duck/Volumes/titanx.sure-to.win ? SFTP/
% Documents/GitHub/Max-sampling-period/
% test_f_h_IOPID_01_15.m
tic
clc;clear;
h=linspace(0.1,1.5,8); %
omega=zeros(length(h),1);
f_h=zeros(length(h),1);
for n=1:8
    fprintf('=========================\n');
    disp(['Step: ' num2str(n) '/8']);
    [ omega(n),f_h(n) ]=cal_f_h(h(n));
    disp(['h=' num2str(h(n))]);
    disp(['f_h=' num2str(f_h(n))]);
end
plot(h,f_h,'-o');
xlabel('h');
ylabel('f(h)');
%axis([0 1.5 0 10]);
saveas(gcf,'f_h_iopid_01_15.fig')
saveas(gcf,'f_h_iopid_01_15.png')
disp('figure saved.')
toc