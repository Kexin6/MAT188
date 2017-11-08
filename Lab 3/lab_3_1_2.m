x=linspace(0,2*pi,300);
y1=sin(x);
y2=cos(x);
plot(x,y1,'b-')
hold on
plot(x,y2,'r--')
grid on
axis([0 2*pi -5 5])
hold on
y3=tan(x)
plot(x,y3,'g:')
ylabel ('sin(x), cos(x) and tan(x)')
xlabel ('x')
title ('Plots of sin(x), cos (x) and tan(x)')
legend('sin(x)','cos(x)','tan(x)')