% HW 2 ECH 267 Problem 10 
% Phase portrait
[x1, x2] = meshgrid(-.5:0.05:.5, -.5:0.05:.5);
x1dot = x2;
x2dot = -x1 - (1/3)*x1.^3- x2;
figure(1)
quiver(x1, x2, x1dot, x2dot, 'g')
title('Phase portrait of system');
xlabel('x1');
ylabel('x2');


