clear all
clc
%% Task1_3
p0 = [2 2 2];
v = [-2 3 3];
w = [1 1 -5];
A = [v' w'];
n = null(A');

fprintf('normal vector to plane:\n')
disp(n)
fprintf('check: n*(v-w)=%d\n',round(n'*(v'-w')))

t = 7/2;
fprintf('\nline equation pass through origin r = tv:\t for t=%d\nr =\n',t)
r = t*n;
disp(r)

d = (eye(3,3)- orth(A)*orth(A)')*p0';
d = sqrt((d(1)^2)+(d(2)^2)+(d(3)^2));
figure(1);clf; hold on;
drawVector(r, {'line (r) prep to plane'});
drawVector(p0',{'point on plane (2,2,2)'},'gs--');
drawPlane(n, 0, 'r');
title('Line perpendicular to plane');

g = [-10;-3;5];
Proj_Matrix = (r*r')/(r'*r);
p = Proj_Matrix*g;
fprintf('\nProjection of point g on line r\np =\n')
disp(p)

fprintf('check: cross product(p,r) = 0\n')
disp(round(cross(p,r)))

figure(2);clf; hold on;
drawVector(r, {'line (r) prep to plane'});
drawVector(p0',{'point on plane (2,2,2)'},'gs--');
drawVector(g, {'g point'},'ys--');
drawVector(p, {'proj_g'},'bs--');
drawLine([g p]);
drawPlane(n, d, 'r');
title('Projection of point g on line r');
