function hessian= Hw4Hessian(x,a)
	%x is a column vector, a is a matrix
	hessian= zeros(500);
	hessian=(2*a.*((1-2*a*x).^(-2)).*2)'*a;
	for flag=1:500
		hessian(flag,flag)=hessian(flag,flag)+2* (2*x(flag)^(-2)+1) * (2/x(flag)-x(flag))^(-2);
	end
