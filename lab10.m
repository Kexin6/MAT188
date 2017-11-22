M=[62 52 71 80 83];
%M=[82 55 60 56 79];
CGPA=0;
flag=0;
for e=1:length (M);
    if M(e) >= 85
       CGPA = CGPA + 4.0;
        flag= flag + 1;
    elseif M(e) >= 80
       CGPA = CGPA + 3.7;
       flag = flag + 1;
    elseif M(e)>= 77
       CGPA = CGPA + 3.3;
      flag = flag + 1;
    elseif M(e)>= 73
       CGPA = CGPA + 3.0;
       flag = flag + 1;
    elseif M(e) >= 70
       CGPA = CGPA + 2.7;
       flag = flag + 1;
    elseif M(e) >= 67
       CGPA = CGPA + 2.3;
       flag = flag + 1;
    elseif M(e) >= 63
       CGPA = CGPA + 2.0;
    elseif M(e) >= 60
       CGPA = CGPA + 1.7;
    elseif M(e) >= 57
       CGPA = CGPA + 1.3;
    elseif M(e) >= 53
       CGPA = CGPA + 1.0;
    elseif M(e) >= 50
       CGPA = CGPA + 0.7;
    end
    e = e + 1;
end
CGPA/5;
