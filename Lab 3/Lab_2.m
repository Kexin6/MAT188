t=(0:0.1:4); 
y=-2*(t-2).^3+3*(t-2)+1;
plot(t,y,'b')
ylabel('Altitude (m)')
xlabel('Time (s)')
title('Analysis of Drone Flight Data')
hold on
y0=[0,0,0];
x0=roots([-2,0,3,1])+2;
plot(x0,y0,'ro')
legend('Altitude in relation to time','Hover Height Points')