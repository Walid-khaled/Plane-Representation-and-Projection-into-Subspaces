clear all
clc
%% Task2_2
V = [3 1 1; 6 2 2; -9 -3 -3];
null_space = null(V);
V_basis = [-1/3 -1/3;1 0;0 1];
fprintf('check V*null_basis = 0\n')
disp(V*V_basis(:,1))
n = cross(V_basis(:,1),V_basis(:,2));

g = [-1;-1;3];
Proj_Matrix = V_basis*pinv(V_basis);
pV = Proj_Matrix*g;
fprintf('\nProjection of g on V using V_basis*pinv(V_basis)\np =\n')
disp(pV)

Proj_Matrix = null_space*null_space';
pV = Proj_Matrix*g;
fprintf('\nProjection of g on V using N*NT\np =\n')
disp(pV)

pV_compliment = (eye(3,3)- Proj_Matrix)*g;
fprintf('\nProjection of g on V compliment using N*NT\np =\n')
disp(pV_compliment)

fprintf('Check the procedure is correct g = pV + PV_vcompliment:\ng =\n')
disp(pV+pV_compliment)

figure(1);clf; hold on;
drawSpan(V_basis, 'r');
drawVector(g, {'g'},'gs--');
drawVector(pV, {'g_V'},'bs--');
drawLine([g pV]);
drawVector(pV_compliment, {'g_VT'},'bs--');
drawLine([g pV_compliment]);
title('Projection of vector g on V and V compliment');
