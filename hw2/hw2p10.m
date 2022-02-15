% HW 2 ECH 267 Problem 10 
% Phase portrait
[x1, x2] = meshgrid(-.5:0.05:.5);
V = (0.75*(x1.^2)) - ((1/12)*(x1.^4)) + ((1/2)*(x1.*x2)) + ((1/2)*(x2.^2));
figure(1)
quiver(x1, x2, x1dot, x2dot, 'g')
title('Phase portrait of the system');
xlabel('x1');
ylabel('x2');

% Contour plot
[p, q] = meshgrid(-2:0.25:2);  
cond = V < (9/8);  % check conditions for these values
cond = double(cond);  % convert to double for plotting
cond(cond == 0) = NaN;  % set the 0s to NaN so they are not plotted
sur = surf(p,q,cond, 'FaceAlpha',0.3)
sur.EdgeColor = 'none';
view(0,90)    % change to top view

title('Level sets of lyapunov function')
xlabel('x1') 
ylabel('x2')

