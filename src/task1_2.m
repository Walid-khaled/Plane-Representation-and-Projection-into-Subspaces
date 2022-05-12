clear all
clc
%% Task1_2_1
fprintf('Task1_2_1\n')
p = [0 1 0];
v = [1 7 4];
w = [2 8 -5];
A = [v' w'];
n = null(A');

fprintf('normal vector to plane:\n')
disp(n)

fprintf('check: n*(v-w)=%d\n',round(n'*(v'-w')))
t = 1;
u = 1;
fprintf('\nplane equation r = p+tv+uw:\t for t=%d, u=%d\nr =',t,u)
r = p + t*v + u*w;
disp(r)

fprintf('check: n*(r-ro)=%d\n',round(n'*(r'-p')))

d = (eye(3,3)- orth(A)*orth(A)')*p';
d = sqrt((d(1)^2)+(d(2)^2)+(d(3)^2));
figure(1);clf; hold on;
drawVector(n, {'n'});
drawVector(p',{'(0,1,0)'},'gs--');
drawPlane(n, d, 'r');
title('Plane1');

%% Task1_2_2
fprintf('\nTask1_2_2\n')
p2 = [-1 0 0];
v2 = [-2 -2 1];
w2 = [5 5 -5];
A2 = [v2' w2'];
n2 = null(A2');

fprintf('normal vector to plane:\n')
disp(n2)

fprintf('check: n*(v-w)=%d\n',round(n2'*(v2'-w2')))
t2 = 1;
u2 = 1;
fprintf('\nplane equation r = p+tv+uw:\t for t=%d, u=%d\nr =',t2,u2)
r2 = p2 + t2*v2 + u2*w2;
disp(r2)

fprintf('check: n*(r-ro)=%d\n',round(n2'*(r2'-p2')))

d2 = (eye(3,3)- orth(A2)*orth(A2)')*p2';
d2 = sqrt((d2(1)^2)+(d2(2)^2)+(d2(3)^2));
figure(2);clf; hold on;
drawVector(-n2, {'n'});
drawVector(p2',{'(-1,0,0)'},'gs--');
drawPlane(n2, -d2, 'r');
title('Plane2');
