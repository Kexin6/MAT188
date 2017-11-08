x=linspace(0,2*pi,300);
y1=sin(x);
y2=cos(x);
plot(x,y1,'b-')
hold on
plot(x,y2,'r--')
grid on
axis([0 2*pi -1 1])
hold on
ylabel ('sin(x) and cos(x)')
xlabel ('x')
title ('Plot of sin(x) and cos (x)')