x = randi([1 10],1,500)';
alpha= 0.4;
beta= 0.4;
a = rand(500)*10;
X=zeros(500,301);
X(:,1)=x;

%debug=zeros(1,301);
for k=1:300
	t=alpha;
	gradients=Hw4Gradient(x,a);
	H=Hw4Hessian(x,a);
	gap=(H\gradients);
%	gap=(gradients);
	newx=x-t*gap;
	while (F(newx,a)>F(x,a))
		t=t*beta;
		newx=x-t*gap;
	end
%	debug(k+1)=t;
	x=newx;
	X(:,k+1)=x;
end

Y=zeros(1,301);
for k=1:301
	Y(k)=F(X(:,k),a);
end

yy=1:1:301;
plot(yy,Y)
%plot(yy,debug)
