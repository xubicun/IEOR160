function fgradient = Hw4Gradient (x,a)
	%x is a column vector, a is a matrix
	fgradient=zeros(length(x),1);
	fgradient=fgradient+2*x./(2-x.*x);
	fgradient=fgradient+(sum(a*2./(1-2*a*x)))';