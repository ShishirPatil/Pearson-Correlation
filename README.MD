In Statistics The Pearson Product-Moment Coefficient of correlation (or commonly Pearson Correlation) measures the extent of correlation between two variables. 
if  r =  1   Positive Correlation
	r = -1   Negative Correlation
	r =  0   No Correlation 

![Correlation](https://github.com/ShishirPatil/Pearson-Correlation/blob/master/Correlation.png)


PCC.m 

	This file defines the function 'PCC'
	This function finds the Pearson Product-Moment Coefficient of correlation across all the columns in a given data file.
	Prototype: [Correlation_Coefficient Degrees of Freedom] = PCC('_insert_file_name_here_.csv')

test.m

	This file runs the PCC and returns the Pearson Product-Moment Coefficient of correlation and the degree of freedom, taking data from the file 'newdata1.csv'