hold off
t=linspace(0,5,100);
y1(y1>0);
t(t>0);
y1=(2*cos(0.08333))*t;
y2=-1/2*9.81*t.^2+(2*sin(0.08333))*t;
plot(y1,y2);
xlabel('distance(x)');
ylabel('height(y)');
title('Distance vs. height');
legend('distance', 'height');