function value=F(x,a)
	value=-sum(log(2-x.^2))-sum(log(1-2*a*x));