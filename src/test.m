%This file finds the Pearson Product-Moment Coefficient of correlation
%across all the columns in a given data file.
%Use the function PCC('_insert_file_name_here_.csv')

clc;
clear all;
close all;

disp('Finding PCC');
[R  Corr]=PCC('newdata1.csv');
disp('The co-efficient of correlation matrix is: ');
disp(R);
disp('The number of degees of freeodom are: ');
disp(Corr);

