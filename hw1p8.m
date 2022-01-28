% Problem 8 phase portraits 
% For system 1
[x1, x2] = meshgrid(-.5:0.05:.5, -.5:0.05:.5);
x1dot = x2;
x2dot = x1 - 2*atan(x1 + x2);
figure(1)
quiver(x1, x2, x1dot, x2dot, 'g')
title('System 1 Phase Portrait');
xlabel('x1');
ylabel('x2');

% For system 2
x2dot_2 = - x1 + x2*(1 - 3*(x1)^2 - 2*(x2)^2);
figure(2)
quiver(x1, x2, x1dot, x2dot_2, 'r')
title('System 2 Phase Portrait');
xlabel('x1');
ylabel('x2');

%For system 3
x1dot_3 = x1 - x1*x2;
x2dot_3 = 2*(x1)^2 - x2;
figure(3)
quiver(x1, x2, x1dot_3, x2dot_3, 'b')
title('System 3 Phase Portrait');
xlabel('x1');
ylabel('x2');

%For system 4
x1dot_4 = x1 + x2 - x1*(abs(x1) + abs(x2));
x2dot_4 = - 2*x1 + x2 - x2*(abs(x1) + abs(x2));
figure(4)
quiver(x1, x2, x1dot_4, x2dot_4, 'k')
title('System 4 Phase Portrait');
xlabel('x1');
ylabel('x2');




