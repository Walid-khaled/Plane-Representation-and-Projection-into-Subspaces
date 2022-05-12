clear all
clc
%% Task1_1
v1 = [1.9 7.54 1.9];
w1 = [34 3.9 6.9];
n1 = cross(v1,w1);
v2 = [1 7.9 8.9];
w2 = [1 7.9 56.9];
n2 = cross(v2,w2);

A = [v2' w2' -v1' -w1'];
Apseudoinv = pinv(A);
fprintf('A*A+\n')
disp(round(A*Apseudoinv))

fprintf('Assuming that both planes pass through the origin\n')
figure(1);clf; hold on;
drawPlane(n1, 'b');
drawPlane(n2, 'r');
title('Planes intersection');
