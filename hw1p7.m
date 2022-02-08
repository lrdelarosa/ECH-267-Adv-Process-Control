% HW 1 ECH 267 Problem 7
%% For system 1 
% In polar coordinates
[x1, x2] = meshgrid(-100:5:100, -100:5:100);
r = sqrt(x1.^2 + x2.^2);
theta = atan(x2./x1);
dr = -r;
dtheta = 1./log(r);
dx = dr.*cos(theta) - r.*sin(theta).*dtheta;
dy = dr.*sin(theta) + r.*cos(theta).*dtheta;

streamslice(x1, x2, dx, dy)
title('System 1 original coordinates');
xlabel('x1');
ylabel('x2');


