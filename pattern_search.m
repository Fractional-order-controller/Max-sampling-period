clc;clear;
x0=1;
lb=10^-5;
ub=50;
A=[];
b=[];
Aeq=[];
beq=[];
x = patternsearch(@myfun,x0,A,b,Aeq,beq,lb,ub,@mycon);
