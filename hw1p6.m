% HW 1 ECH 267 Problem 6
%% For system 1 
% For x1 and x2 coordinates
[x1, x2] = meshgrid(-.5:0.05:.5, -.5:0.05:.5);
x1dot = x2;
x2dot = -2*x1 - 3*x2;
figure(1)
quiver(x1, x2, x1dot, x2dot, 'g')
title('System 1 original coordinates');
xlabel('x1');
ylabel('x2');

% For z1 and z2 coordinates
[z1, z2] = meshgrid(-.5:0.05:.5, -.5:0.05:.5);
z1dot = -2*z1
z2dot = -z2
figure(2)
quiver(z1, z2, z1dot, z2dot, 'g')
title('System 1 modal coordinates');
xlabel('z1');
ylabel('z2');

%% For system 2
% For x1 and x2 coordinates
x1dot_2 = -x2;
x2dot_2 = x1 + 2*x2;
figure(3)
quiver(x1, x2, x1dot_2, x2dot_2, 'r')
title('System 2 original coordinates');
xlabel('x1');
ylabel('x2');

% For z1 and z2 coordinates
%Jordan form does not exist

%% For system 3
% For x1 and x2 coordinates
x1dot_3 = x1 + x2;
x2dot_3 = -x2;
figure(4)
quiver(x1, x2, x1dot_3, x2dot_3, 'b')
title('System 3 original coordinates');
xlabel('x1');
ylabel('x2');

% For z1 and z2 coordinates
z1dot_3 = -z1
z2dot_3 = z2
figure(5)
quiver(z1, z2, z1dot_3, z2dot_3, 'b')
title('System 3 modal coordinates');
xlabel('z1');
ylabel('z2');

%% For system 4
% For x1 and x2 coordinates
x1dot_4 = x1 + 5*x2;
x2dot_4 = -x1 - x2;
figure(6)
quiver(x1, x2, x1dot_4, x2dot_4, 'k')
title('System 4 original coordinates');
xlabel('x1');
ylabel('x2');

% For z1 and z2 coordinates
z1dot_4 = -2*z2
z2dot_4 = 2*z1
figure(7)
quiver(z1, z2, z1dot_4, z2dot_4, 'k')
title('System 4 modal coordinates');
xlabel('z1');
ylabel('z2');

%% For system 5
% For x1 and x2 coordinates
x1dot_5 = 2*x1 - x2;
x2dot_5 = 2*x1;
figure(8)
quiver(x1, x2, x1dot_5, x2dot_5, 'c')
title('System 5 original coordinates');
xlabel('x1');
ylabel('x2');

% For z1 and z2 coordinates
z1dot_5 = z1 - z2
z2dot_5 = z1 + z2
figure(9)
quiver(z1, z2, z1dot_5, z2dot_5, 'c')
title('System 5 modal coordinates');
xlabel('z1');
ylabel('z2');




