function [C,Ceq,GC,GCeq] = CstFunIdeal(in1,w0,m,g,l)
%CSTFUNIDEAL
%    [C,CEQ,GC,GCEQ] = CSTFUNIDEAL(IN1,W0,M,G,L)

%    This function was generated by the Symbolic Math Toolbox version 6.0.
%    13-Feb-2015 08:36:18

decVar1 = in1(:,1);
decVar2 = in1(:,2);
decVar3 = in1(:,3);
decVar4 = in1(:,4);
decVar5 = in1(:,5);
t2 = cos(decVar1);
t3 = sin(decVar1);
t4 = 1.0./l;
t5 = g.*t2.*t4;
t6 = sqrt(t5);
t7 = t2-1.0;
t8 = t2.^2;
t9 = t3.^2;
t10 = t8-t9;
t11 = conj(t6);
t12 = 1.0./t11;
t13 = g.*t3.*t4.*t12.*(1.0./2.0);
t14 = sqrt(2.0);
t15 = sqrt(-g.*t4.*t7);
C = [decVar3-t6;decVar2.*t10-decVar3.*l.*m.*t2.*t3.*2.0;decVar4-t6;-decVar4+t14.*t15];
if nargout > 1
    t16 = w0.^2;
    t17 = g.*t4.*t7.*2.0;
    t18 = 1.0./m;
    t19 = decVar4.^2;
    t20 = t17+t19;
    t21 = sqrt(t20);
    Ceq = [decVar3-sqrt(t16-g.*t4.*t7.*2.0);decVar4-decVar3.*t10-decVar2.*t2.*t3.*t4.*t18.*2.0;decVar5-t21];
end
if nargout > 2
    GC = reshape([t13,0.0,1.0,0.0,0.0,decVar2.*t2.*t3.*-4.0-decVar3.*l.*m.*t8.*2.0+decVar3.*l.*m.*t9.*2.0,t10,l.*m.*t2.*t3.*-2.0,0.0,0.0,t13,0.0,0.0,1.0,0.0,(g.*t3.*t4.*t14.*(1.0./2.0))./conj(t15),0.0,0.0,-1.0,0.0],[5, 4]);
end
if nargout > 3
    t22 = conj(t21);
    t23 = 1.0./t22;
    GCeq = reshape([-(g.*t3.*t4)./conj(sqrt(t16-t17)),0.0,1.0,0.0,0.0,decVar3.*t2.*t3.*4.0-decVar2.*t4.*t8.*t18.*2.0+decVar2.*t4.*t9.*t18.*2.0,t2.*t3.*t4.*t18.*-2.0,-t8+t9,1.0,0.0,g.*t3.*t4.*t23,0.0,0.0,-decVar4.*t23,1.0],[5, 3]);
end
