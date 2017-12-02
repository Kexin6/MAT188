load('robpos.mat');
close all;
%Part a) position, velocity and acceleration graphs
plot (robpos(:,2),robpos(:,end), 'r-');
xlabel ('x(t)');
ylabel ('y(t)');
title ('Position of Robot');
legend ('Position of the robot');
hold on;
figure;
v=[];
a=[];
for t=1:60
    v(t)=sqrt((robpos(t+1,2)-robpos(t,2)).^2+(robpos(t+1,end)-robpos(t,end)).^2);
    if t>1
        a(t)=v(t)-v(t-1);
    end
end
t=linspace (0,60,60);
plot (t,v,'b-');
xlabel ('t');
ylabel ('v(t)');
title ('v(t) vs t');
legend ('Velocity of the robot');
hold on;
figure;
plot (t,a, 'm-');
xlabel ('t');
ylabel ('a(t)');
title ('a(t) vs t');
legend ('Acceleration of the robot');
hold on;

%Part b) polynomial curve fitting
t=linspace (0,60,61);
xfit=[];
yfit=[];
xxfit=polyfit (t,robpos(:,2)', 4);
xyfit=polyfit (t,robpos(:,end)', 3);
yfit=xyfit(1).*t.^3+xyfit(2).*t.^2+xyfit(3).*t+xyfit(4);
xfit=xxfit(1).*t.^4+xxfit(2).*t.^3+xxfit(3).*t.^2+xxfit(4).*t+xxfit(5);
figure;
plot (robpos(:,2),robpos(:,end), 'r-');
hold on;
plot (xfit, yfit, 'b-');
xlabel ('x(t)');
ylabel ('y(t)');
title ('Position of Robot');
legend ('Position (Original)','Position (Fit)');

vs=[];
as=[];
for t=1:60
    vsx(t)=xfit(t+1)-xfit(t);
    vsy(t)=yfit(t+1)-yfit(t);
    vs(t)=sqrt((vsx(t)).^2+vsy(t).^2);
    if t>1
        as(t)=vs(t)-vs(t-1);
    end
end
figure;
t=linspace (0,60,60);
plot (t,v,'b-');
hold on;
plot (t,vs,'m.');
xlabel ('t');
ylabel ('v(t)');
title ('v(t) vs t');
legend ('Velocity (Original)','Velocity (Fit)');
figure;
plot (t,a,'m-');
hold on;
plot (t,as, 'b.');
xlabel ('t');
ylabel ('a(t)');
title ('a(t) vs t');
legend ('Acceleration (Original)','Acceleration (Fit)');

%Part c) Path control
figure;
t=linspace (0,60,61);
xc = 1.2.*sin((2.*pi)/60.*(t-15))+1.2;
yc = 1.2.*sin((2.*pi)/60.*t);
plot (xc,yc,'k-');
xlabel ('x(t)');
ylabel ('y(t)');
title ('Position of Robot in Circular Path');
legend ('Position of the robot');
hold on;
vc=[];
ac=[];
axis([0,2.4,-1.2,1.2]);
for t=1:60
    vxc(t) = xc(t+1)-xc(t);
    vyc(t) = yc(t+1)-yc(t);
    vc(t) = sqrt(vxc(t)^2+vyc(t)^2);
    if t>1
        ac(t)=vc(t)-vc(t-1);
    end
end
figure;
t=linspace (0,60,60);
plot (t,vc,'b--');
xlabel ('t');
ylabel ('v(t)');
title ('v(t) vs t');
legend ('Velocity of the robot in circular path');
hold on;
figure;
plot (t,ac, 'm--');
xlabel ('t');
ylabel ('a(t)');
title ('a(t) vs t');
legend ('Acceleration of the robot in circular path');