function [residual, g1, g2, g3] = EA_SW03_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 86, 1);

%
% Model equations
%

T180 = 1/(1+params(55)*params(37));
T220 = (-params(46))*(1-params(38))/(1-params(38)-params(47));
T224 = params(46)*params(47)/(1-params(38)-params(47));
T260 = (1-params(57))*(1-params(57))/params(57);
T368 = params(50)*params(49)/(1-params(49))-1;
T369 = params(41)+T368;
T380 = 1/(params(41)+(1+params(37))*params(48)*T369/(1-params(48))+params(37)*params(41)*params(48)*(params(42)-1));
T382 = params(48)*T369/(1-params(48));
T405 = T369*params(48)/(1-params(48))*params(48)*params(37)*params(52)+T369*params(48)/(1-params(48))+T368*params(52)*params(37)*params(48);
lhs =y(60);
rhs =y(35)*4;
residual(1)= lhs-rhs;
lhs =y(61);
rhs =y(34);
residual(2)= lhs-rhs;
lhs =y(62);
rhs =4*y(28);
residual(3)= lhs-rhs;
lhs =y(63);
rhs =y(39);
residual(4)= lhs-rhs;
lhs =y(64);
rhs =y(26);
residual(5)= lhs-rhs;
lhs =y(65);
rhs =y(59);
residual(6)= lhs-rhs;
lhs =y(60);
rhs =params(32)*x(14)+y(64)*params(31)+y(64)*params(30)+y(64)*params(29)+y(64)*params(28)+y(64)*params(27)+y(64)*params(26)+y(64)*params(25)+y(64)*params(24)+y(64)*params(23)+y(63)*params(22)+y(63)*params(21)+y(63)*params(20)+y(63)*params(19)+y(63)*params(18)+y(63)*params(17)+y(63)*params(16)+y(63)*params(15)+y(63)*params(14)+y(62)*params(13)+y(62)*params(12)+y(62)*params(11)+y(62)*params(10)+y(62)*params(6)+y(62)*params(5)+y(60)*params(1)+y(60)*params(2)+y(60)*params(3)+y(60)*params(4)+y(62)*params(7)+y(62)*params(8)+y(62)*params(9);
residual(7)= lhs-rhs;
lhs =y(65);
rhs =params(34)*x(15);
residual(8)= lhs-rhs;
lhs =y(1);
rhs =params(35)*y(3)+(1-params(35))*y(12)-y(40);
residual(9)= lhs-rhs;
lhs =y(2);
rhs =y(3)*1/params(56);
residual(10)= lhs-rhs;
lhs =y(3);
rhs =y(12)+y(10)-y(4);
residual(11)= lhs-rhs;
lhs =y(4);
rhs =y(2)+y(54);
residual(12)= lhs-rhs;
lhs =y(8);
rhs =T180*(y(8)*params(55)+y(8)*params(37)+1/params(45)*y(5));
residual(13)= lhs-rhs;
lhs =y(5);
rhs =y(6)+(-y(6))-y(42)+y(3)*(1-params(37)*(1-params(36)))+y(5)*params(37)*(1-params(36))+y(45);
residual(14)= lhs-rhs;
lhs =y(6);
rhs =y(6)+y(17)-y(11)-y(42);
residual(15)= lhs-rhs;
lhs =y(6);
rhs =T220*y(7)+T224*y(55);
residual(16)= lhs-rhs;
lhs =y(9);
rhs =y(7)*params(39)+y(8)*params(40)+y(43);
residual(17)= lhs-rhs;
lhs =y(9);
rhs =params(54)*(y(40)+params(35)*y(4)+(1-params(35))*y(10));
residual(18)= lhs-rhs;
residual(19) = y(1);
lhs =y(12);
rhs =(-y(6))-y(44)+y(10)*params(50);
residual(20)= lhs-rhs;
lhs =y(13);
rhs =y(11);
residual(21)= lhs-rhs;
lhs =y(14);
rhs =y(14)+y(14)-y(14)+T260*y(16);
residual(22)= lhs-rhs;
lhs =y(15);
rhs =y(17)-y(11);
residual(23)= lhs-rhs;
lhs =y(16);
rhs =y(10)-y(14);
residual(24)= lhs-rhs;
residual(25) = y(11);
lhs =y(18);
rhs =params(35)*y(20)+(1-params(35))*y(29)-y(40)-y(51);
residual(26)= lhs-rhs;
lhs =y(19);
rhs =1/params(56)*y(20);
residual(27)= lhs-rhs;
lhs =y(20);
rhs =y(29)+y(27)-y(21);
residual(28)= lhs-rhs;
lhs =y(21);
rhs =y(19)+y(56);
residual(29)= lhs-rhs;
lhs =y(25);
rhs =y(49)+T180*(params(55)*y(25)+params(37)*y(25)+1/params(45)*y(22));
residual(30)= lhs-rhs;
lhs =y(22);
rhs =y(45)+y(23)+(-y(23))-y(42)+(1-params(37)*(1-params(36)))*y(20)+params(37)*(1-params(36))*y(22);
residual(31)= lhs-rhs;
lhs =y(23);
rhs =y(35)+y(23)-y(28)-y(42)-y(48);
residual(32)= lhs-rhs;
lhs =y(23);
rhs =T220*y(24)+T224*y(57);
residual(33)= lhs-rhs;
lhs =y(26);
rhs =y(43)+params(39)*y(24)+params(40)*y(25)+y(50);
residual(34)= lhs-rhs;
lhs =y(26);
rhs =params(54)*(y(51)+y(40)+params(35)*y(21)+(1-params(35))*y(27));
residual(35)= lhs-rhs;
lhs =y(28);
rhs =y(52)+1/(1+params(37)*params(53))*(y(28)*params(37)+y(28)*params(53)+(1-params(51))*(1-params(37)*params(51))/params(51)*(y(18)+y(46)));
residual(36)= lhs-rhs;
lhs =y(29);
rhs =T380*(y(29)*(params(41)+T382+params(41)*(params(42)-1))+y(29)*params(37)*T382+y(28)*T369*params(52)*params(48)/(1-params(48))-y(28)*T405+y(28)*params(37)*params(48)*(T368+T369*params(48)/(1-params(48)))+(1-params(37)*params(48))*(y(44)+y(29)+y(23)-params(43)*y(33)-y(27)*params(50)*1/(1-params(44))+y(27)*params(50)*params(44)/(1-params(44))))+y(53);
residual(37)= lhs-rhs;
lhs =y(30);
rhs =y(28);
residual(38)= lhs-rhs;
lhs =y(31);
rhs =y(31)+y(31)-y(31)+T260*y(33)+0.0*(y(40)+y(40)*params(37)-y(40)*(1+params(37)));
residual(39)= lhs-rhs;
lhs =y(32);
rhs =y(29);
residual(40)= lhs-rhs;
lhs =y(33);
rhs =y(27)-y(31);
residual(41)= lhs-rhs;
residual(42) = y(36);
lhs =y(37);
rhs =y(28);
residual(43)= lhs-rhs;
lhs =y(38);
rhs =y(37);
residual(44)= lhs-rhs;
lhs =y(34);
rhs =y(38)+y(38)+y(28)+y(37);
residual(45)= lhs-rhs;
lhs =y(39);
rhs =y(26)-y(9);
residual(46)= lhs-rhs;
lhs =y(40);
rhs =y(40)*params(63)+params(77)*x(1);
residual(47)= lhs-rhs;
lhs =y(41);
rhs =y(41)*params(64)+params(78)*x(6);
residual(48)= lhs-rhs;
lhs =y(42);
rhs =y(42)*params(65)+params(79)*x(2);
residual(49)= lhs-rhs;
lhs =y(43);
rhs =y(43)*params(66)+y(59)*params(80);
residual(50)= lhs-rhs;
lhs =y(44);
rhs =y(44)*params(67)+params(81)*x(3);
residual(51)= lhs-rhs;
lhs =y(45);
rhs =y(45)*params(68)+params(82)*x(4);
residual(52)= lhs-rhs;
lhs =y(46);
rhs =y(46)*params(69)+params(83)*x(5);
residual(53)= lhs-rhs;
lhs =y(47);
rhs =y(47)*params(70)+params(84)*x(13);
residual(54)= lhs-rhs;
lhs =y(48);
rhs =y(48)*params(72)+params(85)*x(7);
residual(55)= lhs-rhs;
lhs =y(49);
rhs =y(49)*params(73)+params(86)*x(8);
residual(56)= lhs-rhs;
lhs =y(50);
rhs =y(50)*params(71)+params(87)*x(9);
residual(57)= lhs-rhs;
lhs =y(51);
rhs =y(51)*params(76)+params(88)*x(10);
residual(58)= lhs-rhs;
lhs =y(52);
rhs =y(52)*params(74)+params(89)*x(11);
residual(59)= lhs-rhs;
lhs =y(53);
rhs =y(53)*params(75)+params(90)*x(12);
residual(60)= lhs-rhs;
lhs =y(54);
rhs =y(54)*(1-params(36))+y(8)*params(36);
residual(61)= lhs-rhs;
lhs =y(55);
rhs =params(38)*y(55)+(1-params(38))*y(7);
residual(62)= lhs-rhs;
lhs =y(56);
rhs =(1-params(36))*y(56)+params(36)*y(25);
residual(63)= lhs-rhs;
lhs =y(57);
rhs =params(38)*y(57)+(1-params(38))*y(24);
residual(64)= lhs-rhs;
residual(65) = y(58);
lhs =y(66);
rhs =y(62);
residual(66)= lhs-rhs;
lhs =y(67);
rhs =y(62);
residual(67)= lhs-rhs;
lhs =y(68);
rhs =y(62);
residual(68)= lhs-rhs;
lhs =y(69);
rhs =y(63);
residual(69)= lhs-rhs;
lhs =y(70);
rhs =y(63);
residual(70)= lhs-rhs;
lhs =y(71);
rhs =y(63);
residual(71)= lhs-rhs;
lhs =y(72);
rhs =y(64);
residual(72)= lhs-rhs;
lhs =y(73);
rhs =y(64);
residual(73)= lhs-rhs;
lhs =y(74);
rhs =y(64);
residual(74)= lhs-rhs;
lhs =y(75);
rhs =y(64);
residual(75)= lhs-rhs;
lhs =y(76);
rhs =y(64);
residual(76)= lhs-rhs;
lhs =y(77);
rhs =y(64);
residual(77)= lhs-rhs;
lhs =y(78);
rhs =y(63);
residual(78)= lhs-rhs;
lhs =y(79);
rhs =y(63);
residual(79)= lhs-rhs;
lhs =y(80);
rhs =y(63);
residual(80)= lhs-rhs;
lhs =y(81);
rhs =y(60);
residual(81)= lhs-rhs;
lhs =y(82);
rhs =y(60);
residual(82)= lhs-rhs;
lhs =y(83);
rhs =y(60);
residual(83)= lhs-rhs;
lhs =y(84);
rhs =y(62);
residual(84)= lhs-rhs;
lhs =y(85);
rhs =y(62);
residual(85)= lhs-rhs;
lhs =y(86);
rhs =y(62);
residual(86)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(86, 86);

  %
  % Jacobian matrix
  %

T3 = (-1);
T759 = (-(1/(1+params(37)*params(53))*(1-params(51))*(1-params(37)*params(51))/params(51)));
  g1(1,35)=(-4);
  g1(1,60)=1;
  g1(2,34)=T3;
  g1(2,61)=1;
  g1(3,28)=(-4);
  g1(3,62)=1;
  g1(4,39)=T3;
  g1(4,63)=1;
  g1(5,26)=T3;
  g1(5,64)=1;
  g1(6,59)=T3;
  g1(6,65)=1;
  g1(7,60)=1-(params(4)+params(3)+params(1)+params(2));
  g1(7,62)=(-(params(13)+params(12)+params(11)+params(10)+params(9)+params(8)+params(7)+params(6)+params(5)));
  g1(7,63)=(-(params(22)+params(21)+params(20)+params(19)+params(18)+params(17)+params(16)+params(15)+params(14)));
  g1(7,64)=(-(params(31)+params(30)+params(29)+params(28)+params(27)+params(26)+params(25)+params(24)+params(23)));
  g1(8,65)=1;
  g1(9,1)=1;
  g1(9,3)=(-params(35));
  g1(9,12)=(-(1-params(35)));
  g1(9,40)=1;
  g1(10,2)=1;
  g1(10,3)=(-(1/params(56)));
  g1(11,3)=1;
  g1(11,4)=1;
  g1(11,10)=T3;
  g1(11,12)=T3;
  g1(12,2)=T3;
  g1(12,4)=1;
  g1(12,54)=T3;
  g1(13,5)=(-(T180*1/params(45)));
  g1(13,8)=1-T180*(params(55)+params(37));
  g1(14,3)=(-(1-params(37)*(1-params(36))));
  g1(14,5)=1-params(37)*(1-params(36));
  g1(14,42)=1;
  g1(14,45)=T3;
  g1(15,11)=1;
  g1(15,17)=T3;
  g1(15,42)=1;
  g1(16,6)=1;
  g1(16,7)=(-T220);
  g1(16,55)=(-T224);
  g1(17,7)=(-params(39));
  g1(17,8)=(-params(40));
  g1(17,9)=1;
  g1(17,43)=T3;
  g1(18,4)=(-(params(35)*params(54)));
  g1(18,9)=1;
  g1(18,10)=(-((1-params(35))*params(54)));
  g1(18,40)=(-params(54));
  g1(19,1)=1;
  g1(20,6)=1;
  g1(20,10)=(-params(50));
  g1(20,12)=1;
  g1(20,44)=1;
  g1(21,11)=T3;
  g1(21,13)=1;
  g1(22,16)=(-T260);
  g1(23,11)=1;
  g1(23,15)=1;
  g1(23,17)=T3;
  g1(24,10)=T3;
  g1(24,14)=1;
  g1(24,16)=1;
  g1(25,11)=1;
  g1(26,18)=1;
  g1(26,20)=(-params(35));
  g1(26,29)=(-(1-params(35)));
  g1(26,40)=1;
  g1(26,51)=1;
  g1(27,19)=1;
  g1(27,20)=(-(1/params(56)));
  g1(28,20)=1;
  g1(28,21)=1;
  g1(28,27)=T3;
  g1(28,29)=T3;
  g1(29,19)=T3;
  g1(29,21)=1;
  g1(29,56)=T3;
  g1(30,22)=(-(T180*1/params(45)));
  g1(30,25)=1-T180*(params(55)+params(37));
  g1(30,49)=T3;
  g1(31,20)=(-(1-params(37)*(1-params(36))));
  g1(31,22)=1-params(37)*(1-params(36));
  g1(31,42)=1;
  g1(31,45)=T3;
  g1(32,28)=1;
  g1(32,35)=T3;
  g1(32,42)=1;
  g1(32,48)=1;
  g1(33,23)=1;
  g1(33,24)=(-T220);
  g1(33,57)=(-T224);
  g1(34,24)=(-params(39));
  g1(34,25)=(-params(40));
  g1(34,26)=1;
  g1(34,43)=T3;
  g1(34,50)=T3;
  g1(35,21)=(-(params(35)*params(54)));
  g1(35,26)=1;
  g1(35,27)=(-((1-params(35))*params(54)));
  g1(35,40)=(-params(54));
  g1(35,51)=(-params(54));
  g1(36,18)=T759;
  g1(36,28)=1-1/(1+params(37)*params(53))*(params(37)+params(53));
  g1(36,46)=T759;
  g1(36,52)=T3;
  g1(37,23)=(-(T380*(1-params(37)*params(48))));
  g1(37,27)=(-(T380*(1-params(37)*params(48))*(params(50)*params(44)/(1-params(44))+(-(params(50)*1/(1-params(44)))))));
  g1(37,28)=(-(T380*(params(37)*params(48)*(T368+T369*params(48)/(1-params(48)))+T369*params(52)*params(48)/(1-params(48))-T405)));
  g1(37,29)=1-T380*(1-params(37)*params(48)+params(41)+T382+params(41)*(params(42)-1)+params(37)*T382);
  g1(37,33)=(-(T380*(1-params(37)*params(48))*(-params(43))));
  g1(37,44)=(-(T380*(1-params(37)*params(48))));
  g1(37,53)=T3;
  g1(38,28)=T3;
  g1(38,30)=1;
  g1(39,33)=(-T260);
  g1(40,29)=T3;
  g1(40,32)=1;
  g1(41,27)=T3;
  g1(41,31)=1;
  g1(41,33)=1;
  g1(42,36)=1;
  g1(43,28)=T3;
  g1(43,37)=1;
  g1(44,37)=T3;
  g1(44,38)=1;
  g1(45,28)=T3;
  g1(45,34)=1;
  g1(45,37)=T3;
  g1(45,38)=(-2);
  g1(46,9)=1;
  g1(46,26)=T3;
  g1(46,39)=1;
  g1(47,40)=1-params(63);
  g1(48,41)=1-params(64);
  g1(49,42)=1-params(65);
  g1(50,43)=1-params(66);
  g1(50,59)=(-params(80));
  g1(51,44)=1-params(67);
  g1(52,45)=1-params(68);
  g1(53,46)=1-params(69);
  g1(54,47)=1-params(70);
  g1(55,48)=1-params(72);
  g1(56,49)=1-params(73);
  g1(57,50)=1-params(71);
  g1(58,51)=1-params(76);
  g1(59,52)=1-params(74);
  g1(60,53)=1-params(75);
  g1(61,8)=(-params(36));
  g1(61,54)=1-(1-params(36));
  g1(62,7)=(-(1-params(38)));
  g1(62,55)=1-params(38);
  g1(63,25)=(-params(36));
  g1(63,56)=1-(1-params(36));
  g1(64,24)=(-(1-params(38)));
  g1(64,57)=1-params(38);
  g1(65,58)=1;
  g1(66,62)=T3;
  g1(66,66)=1;
  g1(67,62)=T3;
  g1(67,67)=1;
  g1(68,62)=T3;
  g1(68,68)=1;
  g1(69,63)=T3;
  g1(69,69)=1;
  g1(70,63)=T3;
  g1(70,70)=1;
  g1(71,63)=T3;
  g1(71,71)=1;
  g1(72,64)=T3;
  g1(72,72)=1;
  g1(73,64)=T3;
  g1(73,73)=1;
  g1(74,64)=T3;
  g1(74,74)=1;
  g1(75,64)=T3;
  g1(75,75)=1;
  g1(76,64)=T3;
  g1(76,76)=1;
  g1(77,64)=T3;
  g1(77,77)=1;
  g1(78,63)=T3;
  g1(78,78)=1;
  g1(79,63)=T3;
  g1(79,79)=1;
  g1(80,63)=T3;
  g1(80,80)=1;
  g1(81,60)=T3;
  g1(81,81)=1;
  g1(82,60)=T3;
  g1(82,82)=1;
  g1(83,60)=T3;
  g1(83,83)=1;
  g1(84,62)=T3;
  g1(84,84)=1;
  g1(85,62)=T3;
  g1(85,85)=1;
  g1(86,62)=T3;
  g1(86,86)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],86,7396);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],86,636056);
end
end
end
end
