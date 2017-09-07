function [residual, g1, g2, g3] = NK_CKL09_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(73, 1);
T3 = (-1);
T175 = (-params(38))/(1-params(37));
T199 = 1/(1+params(41)*params(35))*(1-params(40))*(1-params(35)*params(40))/params(40);
T283 = (-params(47))/(1-params(47));
T285 = 1/(1-params(47));
T287 = y(49)*T283+(y(51)+y(74))*T285;
T301 = params(46)/(1-params(46))*y(115);
T319 = (-(1+params(39)))/(1-params(47));
T322 = (1+params(39))/(1-params(47));
T327 = params(44)*params(35)*(1-params(46))/(1-params(44)*params(35)*(1-params(46)));
T337 = T327*(params(78)*params(88)*(params(47)/(1-params(47)))^2-params(78)*params(82)*(1+params(39))/(1-params(47))^2);
T351 = params(88)*params(78)/params(47);
T372 = params(88)*params(78)/(1-params(47));
T375 = params(78)*params(82)/(1+params(39));
T385 = params(47)*params(88)*params(78)/(1-params(47))-params(78)*T285*params(82);
T393 = T385*params(35)*params(44)*params(85)/(1-params(44)*params(35)*(1-params(46)));
T415 = params(68)/params(84);
T421 = params(78)*params(88)*params(35)*params(44)/(1-params(44)*params(35)*(1-params(46)));
T500 = params(78)*params(82)*T3/(1-params(47));
lhs =y(76);
rhs =4*y(45);
residual(1)= lhs-rhs;
lhs =y(77);
rhs =y(43);
residual(2)= lhs-rhs;
lhs =y(78);
rhs =4*y(42);
residual(3)= lhs-rhs;
lhs =y(79);
rhs =y(52)-y(66);
residual(4)= lhs-rhs;
lhs =y(80);
rhs =y(52);
residual(5)= lhs-rhs;
lhs =y(81);
rhs =y(75);
residual(6)= lhs-rhs;
lhs =y(76);
rhs =params(32)*x(it_, 7)+params(31)*y(127)+params(30)*y(126)+params(29)*y(125)+params(28)*y(118)+params(27)*y(20)+params(26)*y(19)+params(25)*y(18)+params(24)*y(17)+y(80)*params(23)+params(22)*y(124)+params(21)*y(123)+params(20)*y(122)+params(19)*y(117)+params(18)*y(23)+params(17)*y(22)+params(16)*y(21)+params(15)*y(16)+y(79)*params(14)+params(13)*y(121)+params(12)*y(120)+params(11)*y(119)+params(10)*y(116)+params(6)*y(15)+y(78)*params(5)+params(1)*y(14)+params(2)*y(24)+params(3)*y(25)+params(4)*y(26)+params(7)*y(27)+params(8)*y(28)+params(9)*y(29);
residual(7)= lhs-rhs;
lhs =y(81);
rhs =params(34)*x(it_, 8);
residual(8)= lhs-rhs;
lhs =y(38);
rhs =y(45)+y(109)+y(70)-y(110);
residual(9)= lhs-rhs;
lhs =y(38);
rhs =T175*(y(32)-params(37)*y(1));
residual(10)= lhs-rhs;
lhs =y(42);
rhs =params(41)/(1+params(41)*params(35))*y(4)+y(110)*params(35)/(1+params(41)*params(35))+T199*y(39);
residual(11)= lhs-rhs;
lhs =y(39);
rhs =y(71)+y(51);
residual(12)= lhs-rhs;
lhs =y(40);
rhs =params(42)*y(47)+(1-params(42))*y(48);
residual(13)= lhs-rhs;
lhs =y(41);
rhs =(1-params(46))*y(3)+params(80)/params(83)*y(2)-params(46)*y(69);
residual(14)= lhs-rhs;
lhs =y(41);
rhs =y(47)*(-params(86))/(1-params(86));
residual(15)= lhs-rhs;
lhs =y(44);
rhs =y(40)-y(48);
residual(16)= lhs-rhs;
lhs =y(46);
rhs =y(40)-y(47);
residual(17)= lhs-rhs;
lhs =y(37)+y(34);
rhs =y(35)+y(33)-1/(1-params(43))*y(67);
residual(18)= lhs-rhs;
lhs =y(50);
rhs =y(51)+y(74)+(params(47)-1)*y(36);
residual(19)= lhs-rhs;
lhs =y(50);
rhs =params(44)*(y(5)-y(42)+y(4)*params(45))+(1-params(44))*y(49);
residual(20)= lhs-rhs;
lhs =y(33);
rhs =(1-params(44)*params(35)*(1-params(46)))*T287+params(44)*params(35)*(1-params(46))*(y(109)+T283*(y(49)+y(42)*params(45)-y(111)-y(110))+y(105)-y(38)-T301);
residual(21)= lhs-rhs;
lhs =y(34)*params(75);
rhs =T287*T283*params(88)*params(78)+params(78)*T285*params(82)*(y(49)*T319-y(38)+(y(51)+y(74))*T322)+(y(49)+y(42)*params(45)-y(111)-y(110))*T337+params(44)*params(35)*(1-params(46))*params(75)*(y(109)-y(38)+y(106)-T301);
residual(22)= lhs-rhs;
lhs =y(37)*params(79);
rhs =T351*(y(74)+y(51)+y(49)*(-params(47)))+params(78)*params(88)*T327*(y(110)+y(111)-y(49)-y(42)*params(45))+params(35)*(1-params(46))*params(79)*(y(109)-y(38)+y(108)-T301);
residual(23)= lhs-rhs;
lhs =y(35)*params(74);
rhs =params(74)*params(35)*(1-params(46)-params(85))*(y(109)-y(38)+y(107))+(y(110)+y(111)-y(49)-y(42)*params(45))*T327*T385+(y(74)+y(51)+y(49)*(-params(47)))*T372-T375*(T322*(y(74)+y(51)-y(49))-y(38))-T393*(y(110)+y(111)-y(50)-y(42)*params(45))-y(46)*params(85)*params(35)*params(74)-y(115)*params(46)*params(35)*params(74);
residual(24)= lhs-rhs;
lhs =T415*(y(68)-y(44));
rhs =T421*(y(110)+y(111)-y(50)-y(42)*params(45))+(y(109)-y(38)+y(108))*params(35)*params(79);
residual(25)= lhs-rhs;
lhs =y(52)*params(89);
rhs =y(32)*params(73)+params(77)*y(73)+params(68)*params(87)*(y(48)+y(68))+y(41)*params(83)*params(70);
residual(26)= lhs-rhs;
lhs =y(52);
rhs =y(41)+y(74)+params(47)*y(36);
residual(27)= lhs-rhs;
lhs =y(43);
rhs =y(42)+y(4)+y(30)+y(31);
residual(28)= lhs-rhs;
lhs =y(59);
rhs =T175*(y(53)-params(37)*y(1));
residual(29)= lhs-rhs;
lhs =0;
rhs =y(71)+y(65);
residual(30)= lhs-rhs;
lhs =y(60);
rhs =params(42)*y(47)+(1-params(42))*y(63);
residual(31)= lhs-rhs;
lhs =y(61);
rhs =y(60)-y(63);
residual(32)= lhs-rhs;
lhs =y(62);
rhs =y(60)-y(47);
residual(33)= lhs-rhs;
lhs =y(58)+y(55);
rhs =y(56)+y(54)-1/(1-params(43))*y(67);
residual(34)= lhs-rhs;
lhs =y(64);
rhs =y(74)+y(65)+(params(47)-1)*y(57);
residual(35)= lhs-rhs;
lhs =y(54);
rhs =T283*y(64)+T285*(y(74)+y(65));
residual(36)= lhs-rhs;
lhs =y(55)*params(90);
rhs =T283*params(88)*params(78)*(T283*y(64)+T285*(y(74)+y(65)))-T500*(T319*y(64)-y(59)+T322*(y(74)+y(65)));
residual(37)= lhs-rhs;
lhs =params(79)*y(58);
rhs =T351*(y(74)+y(65)+(-params(47))*y(64))+params(35)*(1-params(46))*params(79)*(y(114)-y(59)+y(113)-T301);
residual(38)= lhs-rhs;
lhs =params(74)*y(56);
rhs =params(74)*params(35)*(1-params(46)-params(85))*(y(114)-y(59)+y(112))+T372*(y(74)+y(65)+(-params(47))*y(64))-T375*(T322*(y(74)+y(65)-y(64))-y(59))-params(85)*params(35)*params(74)*y(62)-y(115)*params(46)*params(35)*params(74);
residual(39)= lhs-rhs;
lhs =T415*(y(68)-y(61));
rhs =params(35)*params(79)*(y(114)-y(59)+y(113));
residual(40)= lhs-rhs;
lhs =y(66)*params(89);
rhs =y(41)*params(83)*params(70)+params(77)*y(73)+params(73)*y(53)+params(68)*params(87)*(y(68)+y(63));
residual(41)= lhs-rhs;
lhs =y(66);
rhs =y(41)+y(74)+params(47)*y(57);
residual(42)= lhs-rhs;
lhs =y(70);
rhs =params(48)*y(9)+params(60)*x(it_, 4);
residual(43)= lhs-rhs;
lhs =y(73);
rhs =y(75)+params(50)*y(12);
residual(44)= lhs-rhs;
lhs =y(72);
rhs =params(49)*y(11)+x(it_, 7)*params(61);
residual(45)= lhs-rhs;
lhs =y(74);
rhs =params(51)*y(13)+params(63)*x(it_, 6);
residual(46)= lhs-rhs;
lhs =y(67);
rhs =params(52)*y(6)+params(65)*x(it_, 1);
residual(47)= lhs-rhs;
lhs =y(68);
rhs =params(53)*y(7)+params(66)*x(it_, 2);
residual(48)= lhs-rhs;
lhs =y(69);
rhs =params(54)*y(8)+params(67)*x(it_, 3);
residual(49)= lhs-rhs;
lhs =y(71);
rhs =params(55)*y(10)+params(64)*x(it_, 5);
residual(50)= lhs-rhs;
lhs =y(82);
rhs =y(116);
residual(51)= lhs-rhs;
lhs =y(83);
rhs =y(119);
residual(52)= lhs-rhs;
lhs =y(84);
rhs =y(120);
residual(53)= lhs-rhs;
lhs =y(85);
rhs =y(117);
residual(54)= lhs-rhs;
lhs =y(86);
rhs =y(122);
residual(55)= lhs-rhs;
lhs =y(87);
rhs =y(123);
residual(56)= lhs-rhs;
lhs =y(88);
rhs =y(118);
residual(57)= lhs-rhs;
lhs =y(89);
rhs =y(125);
residual(58)= lhs-rhs;
lhs =y(90);
rhs =y(126);
residual(59)= lhs-rhs;
lhs =y(91);
rhs =y(17);
residual(60)= lhs-rhs;
lhs =y(92);
rhs =y(18);
residual(61)= lhs-rhs;
lhs =y(93);
rhs =y(19);
residual(62)= lhs-rhs;
lhs =y(94);
rhs =y(16);
residual(63)= lhs-rhs;
lhs =y(95);
rhs =y(21);
residual(64)= lhs-rhs;
lhs =y(96);
rhs =y(22);
residual(65)= lhs-rhs;
lhs =y(97);
rhs =y(14);
residual(66)= lhs-rhs;
lhs =y(98);
rhs =y(24);
residual(67)= lhs-rhs;
lhs =y(99);
rhs =y(25);
residual(68)= lhs-rhs;
lhs =y(100);
rhs =y(15);
residual(69)= lhs-rhs;
lhs =y(101);
rhs =y(27);
residual(70)= lhs-rhs;
lhs =y(102);
rhs =y(28);
residual(71)= lhs-rhs;
lhs =y(103);
rhs =y(4);
residual(72)= lhs-rhs;
lhs =y(104);
rhs =y(30);
residual(73)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(73, 135);

%
% Jacobian matrix
%

g1(1,45)=(-4);
g1(1,76)=1;
g1(2,43)=T3;
g1(2,77)=1;
g1(3,42)=(-4);
g1(3,78)=1;
g1(4,52)=T3;
g1(4,66)=1;
g1(4,79)=1;
g1(5,52)=T3;
g1(5,80)=1;
g1(6,75)=T3;
g1(6,81)=1;
g1(7,14)=(-params(1));
g1(7,76)=1;
g1(7,15)=(-params(6));
g1(7,78)=(-params(5));
g1(7,116)=(-params(10));
g1(7,16)=(-params(15));
g1(7,79)=(-params(14));
g1(7,117)=(-params(19));
g1(7,17)=(-params(24));
g1(7,80)=(-params(23));
g1(7,118)=(-params(28));
g1(7,134)=(-params(32));
g1(7,119)=(-params(11));
g1(7,120)=(-params(12));
g1(7,121)=(-params(13));
g1(7,122)=(-params(20));
g1(7,123)=(-params(21));
g1(7,124)=(-params(22));
g1(7,125)=(-params(29));
g1(7,126)=(-params(30));
g1(7,127)=(-params(31));
g1(7,18)=(-params(25));
g1(7,19)=(-params(26));
g1(7,20)=(-params(27));
g1(7,21)=(-params(16));
g1(7,22)=(-params(17));
g1(7,23)=(-params(18));
g1(7,24)=(-params(2));
g1(7,25)=(-params(3));
g1(7,26)=(-params(4));
g1(7,27)=(-params(7));
g1(7,28)=(-params(8));
g1(7,29)=(-params(9));
g1(8,81)=1;
g1(8,135)=(-params(34));
g1(9,38)=1;
g1(9,109)=T3;
g1(9,110)=1;
g1(9,45)=T3;
g1(9,70)=T3;
g1(10,1)=(-(T175*(-params(37))));
g1(10,32)=(-T175);
g1(10,38)=1;
g1(11,39)=(-T199);
g1(11,4)=(-(params(41)/(1+params(41)*params(35))));
g1(11,42)=1;
g1(11,110)=(-(params(35)/(1+params(41)*params(35))));
g1(12,39)=1;
g1(12,51)=T3;
g1(12,71)=T3;
g1(13,40)=1;
g1(13,47)=(-params(42));
g1(13,48)=(-(1-params(42)));
g1(14,2)=(-(params(80)/params(83)));
g1(14,3)=(-(1-params(46)));
g1(14,41)=1;
g1(14,69)=params(46);
g1(15,41)=1;
g1(15,47)=(-((-params(86))/(1-params(86))));
g1(16,40)=T3;
g1(16,44)=1;
g1(16,48)=1;
g1(17,40)=T3;
g1(17,46)=1;
g1(17,47)=1;
g1(18,33)=T3;
g1(18,34)=1;
g1(18,35)=T3;
g1(18,37)=1;
g1(18,67)=1/(1-params(43));
g1(19,36)=(-(params(47)-1));
g1(19,50)=1;
g1(19,51)=T3;
g1(19,74)=T3;
g1(20,4)=(-(params(44)*params(45)));
g1(20,42)=params(44);
g1(20,49)=(-(1-params(44)));
g1(20,5)=(-params(44));
g1(20,50)=1;
g1(21,33)=1;
g1(21,105)=(-(params(44)*params(35)*(1-params(46))));
g1(21,38)=params(44)*params(35)*(1-params(46));
g1(21,109)=(-(params(44)*params(35)*(1-params(46))));
g1(21,42)=(-(params(44)*params(35)*(1-params(46))*params(45)*T283));
g1(21,110)=(-(params(44)*params(35)*(1-params(46))*(-T283)));
g1(21,49)=(-((1-params(44)*params(35)*(1-params(46)))*T283+params(44)*params(35)*(1-params(46))*T283));
g1(21,111)=(-(params(44)*params(35)*(1-params(46))*(-T283)));
g1(21,51)=(-((1-params(44)*params(35)*(1-params(46)))*T285));
g1(21,115)=(-(params(44)*params(35)*(1-params(46))*(-(params(46)/(1-params(46))))));
g1(21,74)=(-((1-params(44)*params(35)*(1-params(46)))*T285));
g1(22,34)=params(75);
g1(22,106)=(-(params(44)*params(35)*(1-params(46))*params(75)));
g1(22,38)=(-((-(params(78)*T285*params(82)))-params(44)*params(35)*(1-params(46))*params(75)));
g1(22,109)=(-(params(44)*params(35)*(1-params(46))*params(75)));
g1(22,42)=(-(params(45)*T337));
g1(22,110)=T337;
g1(22,49)=(-(T337+T283*T283*params(88)*params(78)+params(78)*T285*params(82)*T319));
g1(22,111)=T337;
g1(22,51)=(-(T285*T283*params(88)*params(78)+params(78)*T285*params(82)*T322));
g1(22,115)=(-(params(44)*params(35)*(1-params(46))*params(75)*(-(params(46)/(1-params(46))))));
g1(22,74)=(-(T285*T283*params(88)*params(78)+params(78)*T285*params(82)*T322));
g1(23,37)=params(79);
g1(23,108)=(-(params(35)*(1-params(46))*params(79)));
g1(23,38)=params(35)*(1-params(46))*params(79);
g1(23,109)=(-(params(35)*(1-params(46))*params(79)));
g1(23,42)=(-(params(78)*params(88)*T327*(-params(45))));
g1(23,110)=(-(params(78)*params(88)*T327));
g1(23,49)=(-((-params(47))*T351-params(78)*params(88)*T327));
g1(23,111)=(-(params(78)*params(88)*T327));
g1(23,51)=(-T351);
g1(23,115)=(-(params(35)*(1-params(46))*params(79)*(-(params(46)/(1-params(46))))));
g1(23,74)=(-T351);
g1(24,35)=params(74);
g1(24,107)=(-(params(74)*params(35)*(1-params(46)-params(85))));
g1(24,38)=(-(T375+(-(params(74)*params(35)*(1-params(46)-params(85))))));
g1(24,109)=(-(params(74)*params(35)*(1-params(46)-params(85))));
g1(24,42)=(-(T327*T385*(-params(45))-T393*(-params(45))));
g1(24,110)=(-(T327*T385-T393));
g1(24,46)=params(85)*params(35)*params(74);
g1(24,49)=(-((-(T327*T385))+(-params(47))*T372-T375*(-T322)));
g1(24,111)=(-(T327*T385-T393));
g1(24,50)=(-T393);
g1(24,51)=(-(T372-T322*T375));
g1(24,115)=params(46)*params(35)*params(74);
g1(24,74)=(-(T372-T322*T375));
g1(25,108)=(-(params(35)*params(79)));
g1(25,38)=params(35)*params(79);
g1(25,109)=(-(params(35)*params(79)));
g1(25,42)=(-(T421*(-params(45))));
g1(25,110)=(-T421);
g1(25,44)=(-T415);
g1(25,111)=(-T421);
g1(25,50)=T421;
g1(25,68)=T415;
g1(26,32)=(-params(73));
g1(26,41)=(-(params(83)*params(70)));
g1(26,48)=(-(params(68)*params(87)));
g1(26,52)=params(89);
g1(26,68)=(-(params(68)*params(87)));
g1(26,73)=(-params(77));
g1(27,36)=(-params(47));
g1(27,41)=T3;
g1(27,52)=1;
g1(27,74)=T3;
g1(28,4)=T3;
g1(28,42)=T3;
g1(28,43)=1;
g1(28,30)=T3;
g1(28,31)=T3;
g1(29,1)=(-(T175*(-params(37))));
g1(29,53)=(-T175);
g1(29,59)=1;
g1(30,65)=T3;
g1(30,71)=T3;
g1(31,47)=(-params(42));
g1(31,60)=1;
g1(31,63)=(-(1-params(42)));
g1(32,60)=T3;
g1(32,61)=1;
g1(32,63)=1;
g1(33,47)=1;
g1(33,60)=T3;
g1(33,62)=1;
g1(34,54)=T3;
g1(34,55)=1;
g1(34,56)=T3;
g1(34,58)=1;
g1(34,67)=1/(1-params(43));
g1(35,57)=(-(params(47)-1));
g1(35,64)=1;
g1(35,65)=T3;
g1(35,74)=T3;
g1(36,54)=1;
g1(36,64)=(-T283);
g1(36,65)=(-T285);
g1(36,74)=(-T285);
g1(37,55)=params(90);
g1(37,59)=(-T500);
g1(37,64)=(-(T283*T283*params(88)*params(78)-T319*T500));
g1(37,65)=(-(T285*T283*params(88)*params(78)-T322*T500));
g1(37,74)=(-(T285*T283*params(88)*params(78)-T322*T500));
g1(38,58)=params(79);
g1(38,113)=(-(params(35)*(1-params(46))*params(79)));
g1(38,59)=params(35)*(1-params(46))*params(79);
g1(38,114)=(-(params(35)*(1-params(46))*params(79)));
g1(38,64)=(-((-params(47))*T351));
g1(38,65)=(-T351);
g1(38,115)=(-(params(35)*(1-params(46))*params(79)*(-(params(46)/(1-params(46))))));
g1(38,74)=(-T351);
g1(39,56)=params(74);
g1(39,112)=(-(params(74)*params(35)*(1-params(46)-params(85))));
g1(39,59)=(-(T375+(-(params(74)*params(35)*(1-params(46)-params(85))))));
g1(39,114)=(-(params(74)*params(35)*(1-params(46)-params(85))));
g1(39,62)=params(85)*params(35)*params(74);
g1(39,64)=(-((-params(47))*T372-T375*(-T322)));
g1(39,65)=(-(T372-T322*T375));
g1(39,115)=params(46)*params(35)*params(74);
g1(39,74)=(-(T372-T322*T375));
g1(40,113)=(-(params(35)*params(79)));
g1(40,59)=params(35)*params(79);
g1(40,114)=(-(params(35)*params(79)));
g1(40,61)=(-T415);
g1(40,68)=T415;
g1(41,41)=(-(params(83)*params(70)));
g1(41,53)=(-params(73));
g1(41,63)=(-(params(68)*params(87)));
g1(41,66)=params(89);
g1(41,68)=(-(params(68)*params(87)));
g1(41,73)=(-params(77));
g1(42,41)=T3;
g1(42,57)=(-params(47));
g1(42,66)=1;
g1(42,74)=T3;
g1(43,9)=(-params(48));
g1(43,70)=1;
g1(43,131)=(-params(60));
g1(44,12)=(-params(50));
g1(44,73)=1;
g1(44,75)=T3;
g1(45,11)=(-params(49));
g1(45,72)=1;
g1(45,134)=(-params(61));
g1(46,13)=(-params(51));
g1(46,74)=1;
g1(46,133)=(-params(63));
g1(47,6)=(-params(52));
g1(47,67)=1;
g1(47,128)=(-params(65));
g1(48,7)=(-params(53));
g1(48,68)=1;
g1(48,129)=(-params(66));
g1(49,8)=(-params(54));
g1(49,69)=1;
g1(49,130)=(-params(67));
g1(50,10)=(-params(55));
g1(50,71)=1;
g1(50,132)=(-params(64));
g1(51,116)=T3;
g1(51,82)=1;
g1(52,119)=T3;
g1(52,83)=1;
g1(53,120)=T3;
g1(53,84)=1;
g1(54,117)=T3;
g1(54,85)=1;
g1(55,122)=T3;
g1(55,86)=1;
g1(56,123)=T3;
g1(56,87)=1;
g1(57,118)=T3;
g1(57,88)=1;
g1(58,125)=T3;
g1(58,89)=1;
g1(59,126)=T3;
g1(59,90)=1;
g1(60,17)=T3;
g1(60,91)=1;
g1(61,18)=T3;
g1(61,92)=1;
g1(62,19)=T3;
g1(62,93)=1;
g1(63,16)=T3;
g1(63,94)=1;
g1(64,21)=T3;
g1(64,95)=1;
g1(65,22)=T3;
g1(65,96)=1;
g1(66,14)=T3;
g1(66,97)=1;
g1(67,24)=T3;
g1(67,98)=1;
g1(68,25)=T3;
g1(68,99)=1;
g1(69,15)=T3;
g1(69,100)=1;
g1(70,27)=T3;
g1(70,101)=1;
g1(71,28)=T3;
g1(71,102)=1;
g1(72,4)=T3;
g1(72,103)=1;
g1(73,30)=T3;
g1(73,104)=1;
end
if nargout >= 3,
%
% Hessian matrix
%

  g2 = sparse([],[],[],73,18225);
end
if nargout >= 4,
%
% Third order derivatives
%

  g3 = sparse([],[],[],73,2460375);
end
end
