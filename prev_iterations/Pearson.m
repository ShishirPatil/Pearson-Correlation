% This file calculates the Pearson Product-moment coefficient(r) implemented 
% from http://psc.dss.ucdavis.edu/sommerb/sommerdemo/correlation/hand/pearson_hand.htm
% 'r' represents the correlation coefficient


clc;
close all;
clear all;

fileName = 'newdata1.csv';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Read Data from CSV %%%%%%%%%%%%%%%%%%%%%%%%% 

dataCSV=csvread(fileName);
[N C]=size(dataCSV);

X=dataCSV(:,1);
Y=dataCSV(:,2);
XY=X.*Y;
X2 = X.*X;
Y2=Y.*Y;

num = (N.*(sum(XY)))-(sum(X).*sum(Y));
densq = (N.*sum(X2)-(sum(X).^2)).*(N.*sum(Y2)-(sum(Y).^2));
den = sqrt(densq);

r = num./den;

disp('Correlation Coefficient (r): ');
disp(r);

%Number of degrees of freedom = Number of pairs-2
df=N-2;

disp('Number of degrees of freedom (df): ');
disp(df);
plot(X,Y)









