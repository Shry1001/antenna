#HALF WAVE DIPOLE

f = 20*(10^6);
c = 3*(10^8);
lambda = c/f;
length = lambda/2;
k = (2*pi)/lambda;
m = length/2;
theta = linspace(0,2*pi,100);
rho = abs(cos(k*(m/2)*cos(theta))-cos(k*(m/2)));
figure
subplot(1,2,1);
polar(theta,rho,'b');
subplot(1,2,2);
plot(theta,rho)



#MONOPOLE ANTENNA E PLANE 
theta = linspace(0, 2*pi, 500);
r = abs((sin(theta)).^3);
x = r .* sin(theta);
z = r .* abs(cos(theta));
figure;
plot(z, x);
xlabel('z axis');
ylabel('x axis');  % Corrected the label
title('Two-dimensional Radiation pattern of monopole antenna', 'color', 'b');
axis([-0.5 0.5 -1 1]);  % Corrected the axis limits
legend('at phi=90')
grid on;


#MONOPOLE ANTENNA H PLANE

theta = linspace(0, 2*pi, 500);
r = 5;  % Removed the extra semicolon
y = r * sin(theta);  % Corrected the syntax for y
x = r * cos(theta);  % Corrected the syntax for x
figure;
plot(x, y);
xlabel('x axis');
ylabel('y axis');  % Corrected the label
title('Two-dimensional Radiation pattern of dipole antenna in H-plane', 'color', 'b');
zlabel('z axis');  % Corrected the label.

