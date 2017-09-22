function [r,df]=PCC(fileName)
% This file calculates the Pearson Product-moment coefficient(r) implemented 
% from http://psc.dss.ucdavis.edu/sommerb/sommerdemo/correlation/hand/pearson_hand.htm
% 'r' = the correlation coefficient
%'df' = the degrees of freedom

disp('Calculating the Pearson Product-moment coefficient..');
disp('Returning (r,df)');
%disp('r: correlation matrix across columns');
%clc;
%close all;
%clear all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Read Data from CSV %%%%%%%%%%%%%%%%%%%%%%%%% 
dataCSV=csvread(fileName);
[N C]=size(dataCSV);
r=[NaN];
for j=1:C
    for i = j:C
        X=dataCSV(:,i);
        Y=dataCSV(:,j);
        XY=X.*Y;
        X2 = X.*X;
        Y2=Y.*Y;
        num = (N.*(sum(XY)))-(sum(X).*sum(Y));
        densq = (N.*sum(X2)-(sum(X).^2)).*(N.*sum(Y2)-(sum(Y).^2));
        den = sqrt(densq);
        correlation = num./den;
        r(i,j)=correlation;
        %disp(i);disp(j);
        %disp('Correlation Coefficient (r): ');
        %disp(r(i,j));
    end
end
%The correlation between 1&2 is same as the correlation between 2&1
%To conserve compute power do not measdure them
%Reassign them to NaN to not confuse with 00
for i=1:C
    for j=1:C
        if(r(i,j)==0)
            r(i,j)=NaN;
        end
        
    end
end
 
%Number of degrees of freedom = Number of pairs-C=rank of null matrix
%disp('df: Number of degrees of freedom');
df=N-C;
%disp('Number of degrees of freedom (df): ');
%disp(df(i,j));
%plot(X,Y)
end







