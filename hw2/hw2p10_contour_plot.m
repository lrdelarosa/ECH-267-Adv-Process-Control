% HW 2 ECH 267 Problem 10 
% Contour plot
f = @(t,X) [X(2); -X(1)+(1/3)*X(1)^3-X(2)];
[x,y] = meshgrid(-2:.25:2,-2:.25:2);
x0 = zeros(size(x));
y0 = zeros(size(x));
t=0;
for i = 1:numel(x)
    Xprime = f(t,[x(i); y(i)]);
    x0(i) = Xprime(1);
    y0(i) = Xprime(2);
end
figure
quiver(x,y,x0,y0,'r');
xlabel('X_1')
ylabel('X_2')
axis ([-2 2 -2 2]);

hold on 

x1 = -2:.25:2;
y = x1;
[X1,X2] = meshgrid(x1);
v = (0.75*(X1.^2)) - ((1/12)*(X1.^4)) + ((1/2)*(X1.*X2)) + ((1/2)*(X2.^2));
[M,c] = contour(X,Y,v,'ShowText','on')
colorbar
c.LineWidth = 2;

hold on
vm = -2:.25:2; 
[p, q] = meshgrid(vm);  
cond = v < (9/8); 
cond = double(cond); 
cond(cond == 0) = NaN;  
sur = surf(p,q,cond, 'FaceAlpha',0.3)
sur.EdgeColor = 'none';
view(0,90)   

title('Lyapunov function level sets')
xlabel('X1') 
ylabel('X2')