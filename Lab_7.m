FAD = [];
FBE = [];
FCG = [];

%Alluminum Alloy 1100
A=[1 1 1; 0 10 16; 24 -80 20];
for P=1:50
    for d=1:16
    b=[P.*1000;d.*P.*1000;0];
    x=A\b;
    FAD(P,d)=x (1,1);
    FBE(P,d)=x (2,1);
    FCG(P,d)=x (3,1);
    ELad(P,d)= (FAD(P,d).*1000.*4/69e9.*4e-4);
    ELbe(P,d)= (FBE(P,d).*1000.*5/69e9.*4e-4);
    ELcg(P,d)= (FCG(P,d).*1000.*2/69e9.*4e-4);
    
    end
end
d = linspace (0,16,16);
P_plot = 50
plot (d,ELad(P_plot,:),'r');
hold on;
plot (d,ELbe (P_plot,:),'r--');
hold on;
plot (d,ELcg (P_plot,:), 'r.');
hold on;
title ('Elongation vs d For Aluminum Alloy 1100');
xlabel ('d (m)');
ylabel ('Elongation (m)');
legend ('ELongation of AD', 'Elongation of BE', 'Elongation of CG');
grid on;
hold off;
 
%Nickel 200
A=[1 1 1; 0 10 16; 24 -80 20];
for P=1:50
    for d=1:16
    b=[P.*1000;d.*P.*1000;0];
    x=A\b;
    FAD(P,d)=x (1,1);
    FBE(P,d)=x (2,1);
    FCG(P,d)=x (3,1);
    ELad(P,d)= (FAD(P,d).*1000.*4/204e9.*4e-4);
    ELbe(P,d)= (FBE(P,d).*1000.*5/204e9.*4e-4);
    ELcg(P,d)= (FCG(P,d).*1000.*2/204e9.*4e-4);
    
    end
end
d = linspace (0,16,16);
P_plot = 50
plot (d,ELad(P_plot,:),'b');
hold on;
plot (d,ELbe (P_plot,:),'b--');
hold on;
plot (d,ELcg (P_plot,:), 'b.');
hold on;
title ('Elongation vs d For Nickel 200');
xlabel ('d (m)');
ylabel ('Elongation (m)');
legend ('ELongation of AD', 'Elongation of BE', 'Elongation of CG');
grid on;
hold off;

%Steel Alloy 4340
A=[1 1 1; 0 10 16; 24 -80 20];
for P=1:50
    for d=1:16
    b=[P.*1000;d.*P.*1000;0];
    x=A\b;
    FAD(P,d)=x (1,1);
    FBE(P,d)=x (2,1);
    FCG(P,d)=x (3,1);
    ELad(P,d)= (FAD(P,d).*1000.*4/207e9.*4e-4);
    ELbe(P,d)= (FBE(P,d).*1000.*5/207e9.*4e-4);
    ELcg(P,d)= (FCG(P,d).*1000.*2/207e9.*4e-4);
    
    end
end
d = linspace (0,16,16);
P_plot = 50
plot (d,ELad(P_plot,:),'g');
hold on;
plot (d,ELbe (P_plot,:),'g--');
hold on;
plot (d,ELcg (P_plot,:), 'g.');
hold on;
title ('Elongation vs d For Steel Alloy 4340');
xlabel ('d (m)');
ylabel ('Elongation (m)');
legend ('ELongation of AD', 'Elongation of BE', 'Elongation of CG');
grid on;


