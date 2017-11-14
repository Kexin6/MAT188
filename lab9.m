clear
close all
domain_x=[-2:0.1:2];
domain_y=[-2:0.1:2];
[x,y]=meshgrid(domain_x, domain_y);
z=x.*exp(-x.^2-y.^2);
surf (x,y,z);
xlabel ('x');
ylabel ('y');
zlabel ('z=x.*exp(-x.^2-y.^2)');
title ('Graph of z');
hold off;
figure;
z1=domain_x.*exp(-domain_x.^2-(-1).^2);
plot (domain_x,z1,'b-');
hold on;
z2=domain_x.*exp(-domain_x.^2-0.^2);
plot (domain_x,z2,'r--');
hold on;
z3=(-1).*exp(-(-1).^2-y.^2);
plot (domain_y,z3,'k.');
hold on;
title ('2D Plots');
legend ('g(x,-2)','g(x,0)','g(-1,y)');
ylabel ('z');
xlabel ('x or y');