clc;
clear;

data = readtable("RandomCartesianPoints.xlsx");
Nx = data{1:end, 1}; % All X coordinates x0, x1, ...
Ny = data{1:end, 2}; % All Y coordinates y0, y1, ...
Nz = data{1:end, 3};% All Z coordinates z0, z1, ...
disp("[#] Data imported successfully...")
disp(" ")

% Actual Algorithm for Best Fit Plane
A = ones(length(Nx), 3);
for i = 1:length(Nx)
    A(i, 1) = Nx(i);
    A(i, 2) = Ny(i);
end

B = Nz;

disp("[#] Applying Linear Regression Technique to Find Best Fit Plane")
disp(" ")

X = (inv(A'*A))*(A'*B);
disp("[*] The Equation of BestFit Plane is: Z = " + X(1) + "X + " + X(2) + "Y + " +  X(3))
