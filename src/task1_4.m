clear all
clc
%% Task1_4
p0 = [-5 11 0.5];
v = [1 0 0];
w = [4 2 -1];
A = [v' w'];
n = null(A');
C = orth(A);

g = [-10;-3;5];
% Proj_Matrix = A*pinv(A); C*C'
p = C*C'*(g-p0')+p0';
fprintf('\nProjection of point g on plane r\np =\n')
disp(p)

fprintf('check the projection point on the plane: n*(p-p0)=%d\n',round(n'*(p-p0')))

d = (eye(3,3)- C*C')*p0';
d = sqrt((d(1)^2)+(d(2)^2)+(d(3)^2));
g_ = (p-g)+p;
fprintf('\ng* symmetrical to g relative to the plane r\ng* =\n')
disp(g_)

figure(1);clf; hold on;
drawVector(p0',{'(-5,11,0.5)'},'gs--');
drawVector(2*d*n, {'n'});
drawLine([d*n p]);
drawVector(g, {'g point'},'ms--');
drawLine([p g]);
drawLine([2*d*n g_],'bs--');
drawLine([p g_]);
drawPlane(n, d, 'r');
plot3(p(1),p(2),p(3),'o-')
title('Projection of point g on plane r');
