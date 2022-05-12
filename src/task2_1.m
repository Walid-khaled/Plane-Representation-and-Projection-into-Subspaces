clear all
clc
%% Task2_1
V = [3 1 1; 6 2 2; -9 -3 -3];
null_space = null(V);

null_basis = [-1/3 -1/3;1 0;0 1];
fprintf('check V*null_basis = 0\n')
disp(V*null_basis(:,1))

figure(1);clf; hold on;
drawSpan(null_space, 'r');
drawSpan(null_basis, 'g');
title('Span of solutions V');
