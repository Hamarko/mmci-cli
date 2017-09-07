function [residual, g1, g2, g3] = CL_MS07_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(153, 1);
T3 = (-1);
T176 = params(109)*params(121)/(params(144)*params(141));
T198 = (1-params(109))*(1-params(36))/(1+params(36))*params(83);
T203 = 1/(1+params(36));
T209 = params(121)*params(109)/(1+params(36))/(params(144)*params(141));
T216 = params(152)*params(109)/(1+params(36))/params(141);
T224 = params(36)/(1+params(36));
T231 = params(121)*params(109)*params(36)/(1+params(36))/(params(144)*params(141));
T238 = params(152)*params(109)*params(36)/(1+params(36))/params(141);
T248 = (1-params(109))*(1-params(36))/(1+params(36))*(1-params(65));
T288 = (-(1+params(128)*params(37)^2+params(37)*params(35)*params(84)*(1+params(128))));
T295 = 1/(1-params(36));
T378 = (1-params(88))/((1+params(113))*(1+params(111)));
T392 = params(130)/((1+params(111))*(1+params(113))*params(127));
T430 = (1+params(111))^2;
T433 = (1+1/(1+params(117)))*T430*params(41);
T440 = T430*params(41)/(1+params(117));
T458 = params(130)/(params(127)*(1+params(117))*(1+params(110)));
T463 = (1-params(88))/((1+params(117))*(1+params(110)));
T476 = T3/params(91);
T493 = params(130)*params(86)/(params(86)-1)*params(132)/params(136);
T501 = params(121)*params(86)/(params(86)-1)/params(136);
T509 = params(86)*params(125)/(params(86)-1)*params(133)/params(136);
T537 = (1-params(128)*params(42))*(1-params(42))/(1+params(128)*params(43));
T562 = (1-params(128)*params(44))*(1-params(44))/(1+params(128)*params(45));
T589 = (1-params(128)*params(46))*(1-params(46))/(1+params(128)*params(47));
T665 = (1-params(100))*(1-params(85))*params(141)*(1-params(149))/params(142);
T671 = (1-params(101))*(1-params(149))*params(140)/params(142);
T698 = params(141)*params(100)/params(145);
T702 = params(97)/params(145);
T710 = params(101)*params(140)/params(145);
T714 = params(148)/params(145);
T722 = 1/params(49);
T730 = params(90)^T722*(params(133)*params(138)/params(136))^((params(49)-1)/params(49));
T739 = (1-params(90))^T722*(params(138)*params(135)/params(136))^((params(49)-1)/params(49));
T741 = 1/params(91);
T742 = params(92)^T741;
T748 = T739*T742*(1/params(135))^((params(91)-1)/params(91));
T752 = (1-params(92))^T741;
T757 = T739*T752*(1/params(137))^((params(91)-1)/params(91));
T783 = (-params(131))/((1+params(118))*params(129));
T791 = params(131)/((1+params(111))*(1+params(113))*(1+params(116)));
T831 = params(131)/(params(129)*(1+params(118))*(1+params(111))*(1+params(113))*(1+params(116)));
T836 = T831*((1+params(118))*params(129)-1);
T881 = (1-1/((1+params(118))*params(129)))*params(153)/((1+params(113))*(1+params(111))*(1+params(116)));
T893 = 1/((1+params(118))*params(129))*params(153)/((1+params(113))*(1+params(113))*(1+params(111)));
T910 = (-params(153))/((1+params(118))*params(129));
T915 = params(153)*1/((1+params(113))*(1+params(111))*(1+params(116)));
T948 = T742*(T722+T741)*params(135)^((-(params(91)-1))/params(91))-T741;
T953 = T752*(T722+T741)*params(137)^((-(params(91)-1))/params(91));
T963 = params(141)*params(85)/params(146)/params(149);
T986 = params(94)*(1-params(102)^params(95))/(1-params(102))/params(95);
T987 = y(118)*T986;
lhs =y(196);
rhs =y(89)*4;
residual(1)= lhs-rhs;
lhs =y(197);
rhs =y(103)+y(11)+y(58)+y(59);
residual(2)= lhs-rhs;
lhs =y(198);
rhs =4*y(103);
residual(3)= lhs-rhs;
lhs =y(200);
rhs =y(133)-y(190);
residual(4)= lhs-rhs;
lhs =y(199);
rhs =y(133);
residual(5)= lhs-rhs;
lhs =y(201);
rhs =y(195);
residual(6)= lhs-rhs;
lhs =y(196);
rhs =params(32)*x(it_, 13)+params(31)*y(261)+params(30)*y(260)+params(29)*y(259)+params(28)*y(251)+params(27)*y(62)+params(26)*y(61)+params(25)*y(60)+params(24)*y(56)+y(199)*params(23)+params(22)*y(258)+params(21)*y(257)+params(20)*y(256)+params(19)*y(252)+params(18)*y(65)+params(17)*y(64)+params(16)*y(63)+params(15)*y(57)+y(200)*params(14)+params(13)*y(255)+params(12)*y(254)+params(11)*y(253)+params(10)*y(250)+params(6)*y(55)+y(198)*params(5)+params(1)*y(54)+params(2)*y(66)+params(3)*y(67)+params(4)*y(68)+params(7)*y(69)+params(8)*y(70)+params(9)*y(71);
residual(7)= lhs-rhs;
lhs =y(201);
rhs =params(34)*x(it_, 14);
residual(8)= lhs-rhs;
residual(9) = (-y(75))+T176*(y(131)+y(97))-params(109)*params(152)/params(141)*(y(133)+y(129)+y(120))-T198*(y(89)-y(229))+T203*y(225)-T209*(y(236)+y(228))+T216*(y(235)+y(237)+y(233))+T224*y(4)-T231*(y(30)+y(10))+T238*(y(29)+y(31)+y(22))+T248*y(125)-(1-params(109))*(params(36)-params(69))/(1+params(36))*y(128);
residual(10) = (-y(89))+y(90)+params(58)*y(73)+(1-params(106))*y(226)-params(106)*y(81);
residual(11) = y(131)*T288+(1-params(128)*params(37))*(1-params(37))*(y(97)*params(35)+y(75)*T295-y(4)*params(36)/(1-params(36))+y(127))+y(30)*params(37)*(1+params(35)*params(84))+y(236)*params(37)*params(128)*(1+params(35)*params(84))-y(103)*params(37)*(1+params(35)*params(84))*(1+params(128)*params(38))+y(11)*params(37)*(1+params(35)*params(84))*params(38)+y(229)*params(37)*params(128)*(1+params(35)*params(84));
residual(12) = (1-params(100))*(params(39)-params(48))*y(109)+y(75)-y(78)-(params(39)*(1-params(100))+params(100)*params(48))*y(111);
residual(13) = y(111)*params(100)*(params(39)-params(48))+y(75)-y(77)-y(109)*(params(39)*params(100)+(1-params(100))*params(48));
residual(14) = params(85)*(y(123)+y(115))+y(111)*params(100)*(1-params(85))+y(109)*(1-params(100))*(1-params(85));
residual(15) = (-y(95))+T378*y(9)+(1-T378)*(y(92)+y(126))-T392*y(130)-y(128)*T378;
residual(16) = y(92)-y(94)-params(40)*(y(111)-y(113));
residual(17) = y(92)-y(93)-params(40)*(y(109)-y(113));
residual(18) = (-y(113))+y(111)*params(101)+y(109)*(1-params(101));
residual(19) = y(126)+(-y(113))+y(121)-y(92)*T433+T430*params(41)*y(8)+T440*y(227)-y(128)*T430*params(41)*(1-params(69)*(1+params(111))/(1+params(117)));
residual(20) = (-y(121))+y(229)-y(89)+T458*y(238)+T463*y(234);
residual(21) = y(130)*params(89)+y(121)-y(139);
residual(22) = y(131)+T476*(y(9)+y(130)-y(128)-y(97))-y(139);
residual(23) = (-y(99))+T493*(y(130)+y(9)+y(139)-y(128))+(y(131)+y(97))*T501+T509*(y(123)+y(115)+y(102))-y(136);
residual(24) = (-params(42))*y(107)+params(128)*params(42)/(1+params(128)*params(43))*y(231)+params(42)*params(43)/(1+params(128)*params(43))*y(14)+T537*(y(99)-y(111));
residual(25) = (-params(44))*y(108)+params(128)*params(44)/(1+params(128)*params(45))*y(232)+params(44)*params(45)/(1+params(128)*params(45))*y(15)+T562*(y(99)-y(123)-y(112));
residual(26) = (-params(46))*y(105)+params(128)*params(46)/(1+params(128)*params(47))*y(230)+params(46)*params(47)/(1+params(128)*params(47))*y(12)+T589*(y(123)+y(110)-y(109));
residual(27) = (-y(79))+y(134)-y(112)*params(57);
residual(28) = y(123)+(-y(116))+y(118);
residual(29) = y(103)+y(111)-y(107)-y(18);
residual(30) = y(106)+y(112)-y(108)-y(19);
residual(31) = y(103)+y(109)-y(105)-y(16);
residual(32) = y(103)+y(123)-y(81)-y(24)-y(106);
residual(33) = (-y(132))+params(150)*y(137)+y(79)*(1-params(150));
residual(34) = (-y(119))+y(116)*params(150)+(1-params(150))*(y(123)+y(112));
residual(35) = (-y(98))+params(149)*y(100)+y(77)*T665+y(93)*T671;
residual(36) = y(123)+(-y(114))+y(115)*params(149)+y(110)*(1-params(149));
residual(37) = (1-params(107))*(y(89)-y(122)-y(103))+params(107)*(y(89)-y(122)-y(104));
residual(38) = (-y(136))+y(78)*T698+T702*(y(133)+y(120)+y(87)-y(111))+y(94)*T710+y(79)*T714;
residual(39) = (-y(136))+y(72)+y(102)*T730+y(97)*T748+T757*(y(130)+y(9)-y(128));
residual(40) = (-y(133))+y(75)*params(141)+params(97)*(y(133)+y(120)+y(87)-y(111))+y(92)*params(140)+y(132)*params(147)-y(98)*params(146);
residual(41) = T783*(y(73)-y(91))+T791*(y(31)+y(22)+y(81)-y(103)-y(120)-y(133)+y(2)-y(128))-(1-params(93))*params(98)*(y(137)+y(123)+y(118)-y(120)-y(133))+params(147)*(y(132)+y(119)-y(120)-y(133))-params(146)*(y(98)+y(114)-y(120)-y(133));
residual(42) = params(147)*(y(132)+y(119)-y(120)-y(133))+(-y(76))-(1-params(93))*params(98)*(y(137)+y(123)+y(118))-params(146)*(y(98)+y(114)-y(120)-y(133))+T831*y(7)+T836*(y(31)+y(22)+y(81)+y(2)-y(103)-y(120)-y(133)-y(128));
residual(43) = y(91)-y(90)-params(58)*y(73)+params(106)*(y(226)+y(81));
residual(44) = (-y(120))+y(111)*params(97)+y(113)*params(140)+y(119)*params(147)-y(114)*params(146);
residual(45) = y(87)*(-params(97))+params(152)*(y(129)-y(133))+params(93)*params(98)*(y(137)+y(117)-y(120)-y(133))+T881*(y(31)+y(22)+y(81)-y(103)+y(3)-y(120)-y(133)-y(128))+y(7)*T893+params(97)*(y(111)+y(88)-y(120)-y(133));
residual(46) = y(129)*params(108)-y(87)*(1-params(108));
residual(47) = T910*(y(74)-y(91))+T915*(y(31)+y(22)+y(81)-y(103)+y(3)-y(120)-y(133)-y(128))+params(152)*y(129)+params(93)*params(98)*(y(137)+y(123)+y(118)-y(120)-y(133)-y(128))-params(97)*y(87);
residual(48) = y(9)-y(96);
residual(49) = y(75)-y(101)-params(48)*(y(123)+y(115));
residual(50) = y(115)+y(123)+y(102)*T722-y(97)*T948-(y(9)+y(130)-y(128))*T953-y(131);
residual(51) = (-y(100))+y(101)*T963+y(102)*(1-T963);
residual(52) = (-y(104))+params(100)*y(107)+(1-params(100))*y(105);
residual(53) = T987+y(123)-y(117);
residual(54) = (-y(124))+T458*y(139)+y(121)*T463-y(23);
residual(55) = y(128)+y(133)-y(84)-y(31);
residual(56) = y(128)+y(75)-y(80)-y(4);
residual(57) = y(128)+y(92)-y(82)-y(8);
residual(58) = y(128)+y(131)-y(83)-y(30);
residual(59) = y(134)-y(135);
residual(60) = y(128)+y(135)-y(85)-y(33);
residual(61) = y(137)-y(138);
residual(62) = y(128)+y(138)-y(86)-y(35);
residual(63) = y(169);
residual(64) = T248*y(125)+(-y(142))+T176*(y(188)+y(162))-params(109)*params(152)/params(141)*(y(190)+y(186)+y(181))-T198*(y(155)-y(243))+T203*y(239)-T209*(y(247)+y(242))+T216*(y(246)+y(248)+y(244))+T224*y(38)-T231*(y(50)+y(42))+T238*(y(49)+y(51)+y(46))-(1-params(109))*(params(36)-params(69))/(1+params(36))*y(128);
residual(65) = (1-params(106))*y(240)+params(58)*y(140)+y(90)-y(155)-params(106)*y(148);
residual(66) = y(127)+(-y(188))+params(35)*y(162)+T295*y(142)-params(36)/(1-params(36))*y(38);
residual(67) = (1-params(100))*(params(39)-params(48))*y(173)+y(142)-y(145)-(params(39)*(1-params(100))+params(100)*params(48))*y(174);
residual(68) = params(100)*(params(39)-params(48))*y(174)+y(142)-y(144)-(params(39)*params(100)+(1-params(100))*params(48))*y(173);
residual(69) = params(85)*(y(115)+y(184))+params(100)*(1-params(85))*y(174)+(1-params(100))*(1-params(85))*y(173);
residual(70) = (-y(160))+T378*y(41)+(1-T378)*(y(126)+y(157))-T392*y(187)-y(128)*T378;
residual(71) = y(157)-y(159)-params(40)*(y(174)-y(176));
residual(72) = y(157)-y(158)-params(40)*(y(173)-y(176));
residual(73) = (-y(176))+params(101)*y(174)+(1-params(101))*y(173);
residual(74) = y(126)+(-y(176))+y(182)-T433*y(157)+T430*params(41)*y(40)+T440*y(241)-y(128)*T430*params(41)*(1-params(69)*(1+params(111))/(1+params(117)));
residual(75) = (-y(182))+y(243)-y(155)+T458*y(249)+T463*y(245);
residual(76) = params(89)*y(187)+y(182)-y(194);
residual(77) = y(188)+T476*(y(41)+y(187)-y(128)-y(162))-y(194);
residual(78) = (-y(164))+T493*(y(187)+y(41)+y(194)-y(128))+T501*(y(188)+y(162))+T509*(y(115)+y(184)+y(167))-y(192);
residual(79) = y(164)-y(174);
residual(80) = y(164)-y(184)-y(175);
residual(81) = y(110)+y(184)-y(173);
residual(82) = y(134)-y(146)-params(57)*y(175);
residual(83) = y(184)+y(118)-y(178);
residual(84) = y(168)+y(174)-y(171)-y(44);
residual(85) = y(106)+y(175)-y(172)-y(45);
residual(86) = y(168)+y(173)-y(170)-y(43);
residual(87) = y(168)+y(184)-y(148)-y(48)-y(106);
residual(88) = (1-params(150))*y(146)+params(150)*y(137)-y(189);
residual(89) = (-y(180))+params(150)*y(178)+(1-params(150))*(y(184)+y(175));
residual(90) = (-y(163))+params(149)*y(165)+T665*y(144)+T671*y(158);
residual(91) = y(184)+y(110)*(1-params(149))+y(115)*params(149)-y(177);
residual(92) = (1-params(107))*(y(155)-y(183)-y(168))+params(107)*(y(155)-y(183)-y(169));
residual(93) = (-y(192))+T698*y(145)+T702*(y(190)+y(181)+y(154)-y(174))+T710*y(159)+T714*y(146);
residual(94) = T757*(y(187)+y(41)-y(128))+T748*y(162)+T730*y(167)+y(72)-y(192);
residual(95) = (-y(190))+params(141)*y(142)+params(97)*(y(190)+y(181)+y(154)-y(174))+params(140)*y(157)+params(147)*y(189)-params(146)*y(163);
residual(96) = T783*(y(140)-y(156))+T791*(y(51)+y(46)+y(148)-y(168)-y(181)-y(190)+y(36)-y(128))-(1-params(93))*params(98)*(y(137)+y(118)+y(184)-y(181)-y(190))+params(147)*(y(189)+y(180)-y(181)-y(190))-params(146)*(y(163)+y(177)-y(181)-y(190));
residual(97) = params(147)*(y(189)+y(180)-y(181)-y(190))+(-y(143))-(1-params(93))*params(98)*(y(137)+y(118)+y(184))-params(146)*(y(163)+y(177)-y(181)-y(190))+T831*y(39)+T836*(y(51)+y(46)+y(148)+y(36)-y(168)-y(181)-y(190)-y(128));
residual(98) = y(156)-y(90)-params(58)*y(140)+params(106)*(y(240)+y(148));
residual(99) = (-y(181))+params(97)*y(174)+params(140)*y(176)+params(147)*y(180)-params(146)*y(177);
residual(100) = (-params(97))*y(154)+params(152)*(y(186)-y(190))+params(93)*params(98)*(y(137)+y(179)-y(181)-y(190))+T881*(y(51)+y(46)+y(148)-y(168)+y(37)-y(181)-y(190)-y(128))+T893*y(39)+params(97)*(y(88)+y(174)-y(181)-y(190));
residual(101) = params(108)*y(186)-(1-params(108))*y(154);
residual(102) = T910*(y(141)-y(156))+T915*(y(51)+y(46)+y(148)-y(168)+y(37)-y(181)-y(190)-y(128))+params(152)*y(186)+params(93)*params(98)*(y(137)+y(118)+y(184)-y(181)-y(190)-y(128))-params(97)*y(154);
residual(103) = y(41)-y(161);
residual(104) = y(142)-y(166)-params(48)*(y(115)+y(184));
residual(105) = y(115)+y(184)+T722*y(167)-T948*y(162)-T953*(y(41)+y(187)-y(128))-y(188);
residual(106) = (-y(165))+T963*y(166)+(1-T963)*y(167);
residual(107) = (-y(169))+params(100)*y(171)+(1-params(100))*y(170);
residual(108) = T987+y(184)-y(179);
residual(109) = (-y(185))+T458*y(194)+T463*y(182)-y(47);
residual(110) = y(128)+y(190)-y(151)-y(51);
residual(111) = y(128)+y(142)-y(147)-y(38);
residual(112) = y(128)+y(157)-y(149)-y(40);
residual(113) = y(128)+y(188)-y(150)-y(50);
residual(114) = y(134)-y(191);
residual(115) = y(128)+y(191)-y(152)-y(52);
residual(116) = y(137)-y(193);
residual(117) = y(128)+y(193)-y(153)-y(53);
lhs =y(72);
rhs =params(59)*y(1)+x(it_, 1);
residual(118)= lhs-rhs;
lhs =y(137);
rhs =params(60)*y(34)+x(it_, 2);
residual(119)= lhs-rhs;
lhs =y(118);
rhs =params(102)*y(21)+x(it_, 3);
residual(120)= lhs-rhs;
lhs =y(134);
rhs =params(61)*y(32)+x(it_, 4);
residual(121)= lhs-rhs;
lhs =y(90);
rhs =params(62)*y(6)+x(it_, 5);
residual(122)= lhs-rhs;
lhs =y(106);
rhs =params(63)*y(13)+x(it_, 6);
residual(123)= lhs-rhs;
lhs =y(127);
rhs =params(64)*y(27)+x(it_, 7);
residual(124)= lhs-rhs;
lhs =y(125);
rhs =params(65)*y(25)+x(it_, 8);
residual(125)= lhs-rhs;
lhs =y(88);
rhs =y(195)+params(66)*y(5);
residual(126)= lhs-rhs;
lhs =y(126);
rhs =params(67)*y(26)+x(it_, 9);
residual(127)= lhs-rhs;
lhs =y(110);
rhs =params(68)*y(17)+x(it_, 10);
residual(128)= lhs-rhs;
lhs =y(115);
rhs =params(104)*y(20)+x(it_, 11);
residual(129)= lhs-rhs;
lhs =y(128);
rhs =params(69)*y(28)+x(it_, 12);
residual(130)= lhs-rhs;
lhs =y(202);
rhs =y(250);
residual(131)= lhs-rhs;
lhs =y(203);
rhs =y(253);
residual(132)= lhs-rhs;
lhs =y(204);
rhs =y(254);
residual(133)= lhs-rhs;
lhs =y(205);
rhs =y(252);
residual(134)= lhs-rhs;
lhs =y(206);
rhs =y(256);
residual(135)= lhs-rhs;
lhs =y(207);
rhs =y(257);
residual(136)= lhs-rhs;
lhs =y(208);
rhs =y(251);
residual(137)= lhs-rhs;
lhs =y(209);
rhs =y(259);
residual(138)= lhs-rhs;
lhs =y(210);
rhs =y(260);
residual(139)= lhs-rhs;
lhs =y(211);
rhs =y(11);
residual(140)= lhs-rhs;
lhs =y(212);
rhs =y(58);
residual(141)= lhs-rhs;
lhs =y(213);
rhs =y(56);
residual(142)= lhs-rhs;
lhs =y(214);
rhs =y(60);
residual(143)= lhs-rhs;
lhs =y(215);
rhs =y(61);
residual(144)= lhs-rhs;
lhs =y(216);
rhs =y(57);
residual(145)= lhs-rhs;
lhs =y(217);
rhs =y(63);
residual(146)= lhs-rhs;
lhs =y(218);
rhs =y(64);
residual(147)= lhs-rhs;
lhs =y(219);
rhs =y(54);
residual(148)= lhs-rhs;
lhs =y(220);
rhs =y(66);
residual(149)= lhs-rhs;
lhs =y(221);
rhs =y(67);
residual(150)= lhs-rhs;
lhs =y(222);
rhs =y(55);
residual(151)= lhs-rhs;
lhs =y(223);
rhs =y(69);
residual(152)= lhs-rhs;
lhs =y(224);
rhs =y(70);
residual(153)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(153, 275);

  %
  % Jacobian matrix
  %

T2001 = (-(params(109)*params(152)/params(141)));
  g1(1,89)=(-4);
  g1(1,196)=1;
  g1(2,11)=T3;
  g1(2,103)=T3;
  g1(2,197)=1;
  g1(2,58)=T3;
  g1(2,59)=T3;
  g1(3,103)=(-4);
  g1(3,198)=1;
  g1(4,133)=T3;
  g1(4,190)=1;
  g1(4,200)=1;
  g1(5,133)=T3;
  g1(5,199)=1;
  g1(6,195)=T3;
  g1(6,201)=1;
  g1(7,54)=(-params(1));
  g1(7,196)=1;
  g1(7,55)=(-params(6));
  g1(7,198)=(-params(5));
  g1(7,250)=(-params(10));
  g1(7,56)=(-params(24));
  g1(7,199)=(-params(23));
  g1(7,251)=(-params(28));
  g1(7,57)=(-params(15));
  g1(7,200)=(-params(14));
  g1(7,252)=(-params(19));
  g1(7,274)=(-params(32));
  g1(7,253)=(-params(11));
  g1(7,254)=(-params(12));
  g1(7,255)=(-params(13));
  g1(7,256)=(-params(20));
  g1(7,257)=(-params(21));
  g1(7,258)=(-params(22));
  g1(7,259)=(-params(29));
  g1(7,260)=(-params(30));
  g1(7,261)=(-params(31));
  g1(7,60)=(-params(25));
  g1(7,61)=(-params(26));
  g1(7,62)=(-params(27));
  g1(7,63)=(-params(16));
  g1(7,64)=(-params(17));
  g1(7,65)=(-params(18));
  g1(7,66)=(-params(2));
  g1(7,67)=(-params(3));
  g1(7,68)=(-params(4));
  g1(7,69)=(-params(7));
  g1(7,70)=(-params(8));
  g1(7,71)=(-params(9));
  g1(8,201)=1;
  g1(8,275)=(-params(34));
  g1(9,4)=T224;
  g1(9,75)=T3;
  g1(9,225)=T203;
  g1(9,89)=(-T198);
  g1(9,10)=(-T231);
  g1(9,97)=T176;
  g1(9,228)=(-T209);
  g1(9,229)=T198;
  g1(9,22)=T238;
  g1(9,120)=T2001;
  g1(9,233)=T216;
  g1(9,125)=T248;
  g1(9,128)=(-((1-params(109))*(params(36)-params(69))/(1+params(36))));
  g1(9,29)=T238;
  g1(9,129)=T2001;
  g1(9,235)=T216;
  g1(9,30)=(-T231);
  g1(9,131)=T176;
  g1(9,236)=(-T209);
  g1(9,31)=T238;
  g1(9,133)=T2001;
  g1(9,237)=T216;
  g1(10,73)=params(58);
  g1(10,81)=(-params(106));
  g1(10,226)=1-params(106);
  g1(10,89)=T3;
  g1(10,90)=1;
  g1(11,4)=(1-params(128)*params(37))*(1-params(37))*(-(params(36)/(1-params(36))));
  g1(11,75)=(1-params(128)*params(37))*(1-params(37))*T295;
  g1(11,97)=params(35)*(1-params(128)*params(37))*(1-params(37));
  g1(11,11)=params(37)*(1+params(35)*params(84))*params(38);
  g1(11,103)=(-(params(37)*(1+params(35)*params(84))*(1+params(128)*params(38))));
  g1(11,229)=params(37)*params(128)*(1+params(35)*params(84));
  g1(11,127)=(1-params(128)*params(37))*(1-params(37));
  g1(11,30)=params(37)*(1+params(35)*params(84));
  g1(11,131)=T288;
  g1(11,236)=params(37)*params(128)*(1+params(35)*params(84));
  g1(12,75)=1;
  g1(12,78)=T3;
  g1(12,109)=(1-params(100))*(params(39)-params(48));
  g1(12,111)=(-(params(39)*(1-params(100))+params(100)*params(48)));
  g1(13,75)=1;
  g1(13,77)=T3;
  g1(13,109)=(-(params(39)*params(100)+(1-params(100))*params(48)));
  g1(13,111)=params(100)*(params(39)-params(48));
  g1(14,109)=(1-params(100))*(1-params(85));
  g1(14,111)=params(100)*(1-params(85));
  g1(14,115)=params(85);
  g1(14,123)=params(85);
  g1(15,92)=1-T378;
  g1(15,9)=T378;
  g1(15,95)=T3;
  g1(15,126)=1-T378;
  g1(15,128)=(-T378);
  g1(15,130)=(-T392);
  g1(16,92)=1;
  g1(16,94)=T3;
  g1(16,111)=(-params(40));
  g1(16,113)=params(40);
  g1(17,92)=1;
  g1(17,93)=T3;
  g1(17,109)=(-params(40));
  g1(17,113)=params(40);
  g1(18,109)=1-params(101);
  g1(18,111)=params(101);
  g1(18,113)=T3;
  g1(19,8)=T430*params(41);
  g1(19,92)=(-T433);
  g1(19,227)=T440;
  g1(19,113)=T3;
  g1(19,121)=1;
  g1(19,126)=1;
  g1(19,128)=(-(T430*params(41)*(1-params(69)*(1+params(111))/(1+params(117)))));
  g1(20,89)=T3;
  g1(20,229)=1;
  g1(20,121)=T3;
  g1(20,234)=T463;
  g1(20,238)=T458;
  g1(21,121)=1;
  g1(21,130)=params(89);
  g1(21,139)=T3;
  g1(22,9)=T476;
  g1(22,97)=(-T476);
  g1(22,128)=(-T476);
  g1(22,130)=T476;
  g1(22,131)=1;
  g1(22,139)=T3;
  g1(23,9)=T493;
  g1(23,97)=T501;
  g1(23,99)=T3;
  g1(23,102)=T509;
  g1(23,115)=T509;
  g1(23,123)=T509;
  g1(23,128)=(-T493);
  g1(23,130)=T493;
  g1(23,131)=T501;
  g1(23,136)=T3;
  g1(23,139)=T493;
  g1(24,99)=T537;
  g1(24,14)=params(42)*params(43)/(1+params(128)*params(43));
  g1(24,107)=(-params(42));
  g1(24,231)=params(128)*params(42)/(1+params(128)*params(43));
  g1(24,111)=(-T537);
  g1(25,99)=T562;
  g1(25,15)=params(44)*params(45)/(1+params(128)*params(45));
  g1(25,108)=(-params(44));
  g1(25,232)=params(128)*params(44)/(1+params(128)*params(45));
  g1(25,112)=(-T562);
  g1(25,123)=(-T562);
  g1(26,12)=params(46)*params(47)/(1+params(128)*params(47));
  g1(26,105)=(-params(46));
  g1(26,230)=params(128)*params(46)/(1+params(128)*params(47));
  g1(26,109)=(-T589);
  g1(26,110)=T589;
  g1(26,123)=T589;
  g1(27,79)=T3;
  g1(27,112)=(-params(57));
  g1(27,134)=1;
  g1(28,116)=T3;
  g1(28,118)=1;
  g1(28,123)=1;
  g1(29,103)=1;
  g1(29,107)=T3;
  g1(29,18)=T3;
  g1(29,111)=1;
  g1(30,106)=1;
  g1(30,108)=T3;
  g1(30,19)=T3;
  g1(30,112)=1;
  g1(31,103)=1;
  g1(31,105)=T3;
  g1(31,16)=T3;
  g1(31,109)=1;
  g1(32,81)=T3;
  g1(32,103)=1;
  g1(32,106)=T3;
  g1(32,24)=T3;
  g1(32,123)=1;
  g1(33,79)=1-params(150);
  g1(33,132)=T3;
  g1(33,137)=params(150);
  g1(34,112)=1-params(150);
  g1(34,116)=params(150);
  g1(34,119)=T3;
  g1(34,123)=1-params(150);
  g1(35,77)=T665;
  g1(35,93)=T671;
  g1(35,98)=T3;
  g1(35,100)=params(149);
  g1(36,110)=1-params(149);
  g1(36,114)=T3;
  g1(36,115)=params(149);
  g1(36,123)=1;
  g1(37,89)=params(107)+1-params(107);
  g1(37,103)=(-(1-params(107)));
  g1(37,104)=(-params(107));
  g1(37,122)=(-(1-params(107)))-params(107);
  g1(38,78)=T698;
  g1(38,79)=T714;
  g1(38,87)=T702;
  g1(38,94)=T710;
  g1(38,111)=(-T702);
  g1(38,120)=T702;
  g1(38,133)=T702;
  g1(38,136)=T3;
  g1(39,72)=1;
  g1(39,9)=T757;
  g1(39,97)=T748;
  g1(39,102)=T730;
  g1(39,128)=(-T757);
  g1(39,130)=T757;
  g1(39,136)=T3;
  g1(40,75)=params(141);
  g1(40,87)=params(97);
  g1(40,92)=params(140);
  g1(40,98)=(-params(146));
  g1(40,111)=(-params(97));
  g1(40,120)=params(97);
  g1(40,132)=params(147);
  g1(40,133)=T3+params(97);
  g1(41,2)=T791;
  g1(41,73)=T783;
  g1(41,81)=T791;
  g1(41,91)=(-T783);
  g1(41,98)=(-params(146));
  g1(41,103)=(-T791);
  g1(41,114)=(-params(146));
  g1(41,118)=(-((1-params(93))*params(98)));
  g1(41,119)=params(147);
  g1(41,22)=T791;
  g1(41,120)=(-T791)-(-((1-params(93))*params(98)))-params(147)-(-params(146));
  g1(41,123)=(-((1-params(93))*params(98)));
  g1(41,128)=(-T791);
  g1(41,132)=params(147);
  g1(41,31)=T791;
  g1(41,133)=(-T791)-(-((1-params(93))*params(98)))-params(147)-(-params(146));
  g1(41,137)=(-((1-params(93))*params(98)));
  g1(42,2)=T836;
  g1(42,76)=T3;
  g1(42,81)=T836;
  g1(42,7)=T831;
  g1(42,98)=(-params(146));
  g1(42,103)=(-T836);
  g1(42,114)=(-params(146));
  g1(42,118)=(-((1-params(93))*params(98)));
  g1(42,119)=params(147);
  g1(42,22)=T836;
  g1(42,120)=(-params(147))-(-params(146))-T836;
  g1(42,123)=(-((1-params(93))*params(98)));
  g1(42,128)=(-T836);
  g1(42,132)=params(147);
  g1(42,31)=T836;
  g1(42,133)=(-params(147))-(-params(146))-T836;
  g1(42,137)=(-((1-params(93))*params(98)));
  g1(43,73)=(-params(58));
  g1(43,81)=params(106);
  g1(43,226)=params(106);
  g1(43,90)=T3;
  g1(43,91)=1;
  g1(44,111)=params(97);
  g1(44,113)=params(140);
  g1(44,114)=(-params(146));
  g1(44,119)=params(147);
  g1(44,120)=T3;
  g1(45,3)=T881;
  g1(45,81)=T881;
  g1(45,87)=(-params(97));
  g1(45,88)=params(97);
  g1(45,7)=T893;
  g1(45,103)=(-T881);
  g1(45,111)=params(97);
  g1(45,117)=params(93)*params(98);
  g1(45,22)=T881;
  g1(45,120)=(-(params(93)*params(98)))-T881-params(97);
  g1(45,128)=(-T881);
  g1(45,129)=params(152);
  g1(45,31)=T881;
  g1(45,133)=(-params(152))-params(93)*params(98)-T881-params(97);
  g1(45,137)=params(93)*params(98);
  g1(46,87)=(-(1-params(108)));
  g1(46,129)=params(108);
  g1(47,3)=T915;
  g1(47,74)=T910;
  g1(47,81)=T915;
  g1(47,87)=(-params(97));
  g1(47,91)=(-T910);
  g1(47,103)=(-T915);
  g1(47,118)=params(93)*params(98);
  g1(47,22)=T915;
  g1(47,120)=(-T915)-params(93)*params(98);
  g1(47,123)=params(93)*params(98);
  g1(47,128)=(-T915)-params(93)*params(98);
  g1(47,129)=params(152);
  g1(47,31)=T915;
  g1(47,133)=(-T915)-params(93)*params(98);
  g1(47,137)=params(93)*params(98);
  g1(48,9)=1;
  g1(48,96)=T3;
  g1(49,75)=1;
  g1(49,101)=T3;
  g1(49,115)=(-params(48));
  g1(49,123)=(-params(48));
  g1(50,9)=(-T953);
  g1(50,97)=(-T948);
  g1(50,102)=T722;
  g1(50,115)=1;
  g1(50,123)=1;
  g1(50,128)=T953;
  g1(50,130)=(-T953);
  g1(50,131)=T3;
  g1(51,100)=T3;
  g1(51,101)=T963;
  g1(51,102)=1-T963;
  g1(52,104)=T3;
  g1(52,105)=1-params(100);
  g1(52,107)=params(100);
  g1(53,117)=T3;
  g1(53,118)=T986;
  g1(53,123)=1;
  g1(54,23)=T3;
  g1(54,121)=T463;
  g1(54,124)=T3;
  g1(54,139)=T458;
  g1(55,84)=T3;
  g1(55,128)=1;
  g1(55,31)=T3;
  g1(55,133)=1;
  g1(56,4)=T3;
  g1(56,75)=1;
  g1(56,80)=T3;
  g1(56,128)=1;
  g1(57,82)=T3;
  g1(57,8)=T3;
  g1(57,92)=1;
  g1(57,128)=1;
  g1(58,83)=T3;
  g1(58,128)=1;
  g1(58,30)=T3;
  g1(58,131)=1;
  g1(59,134)=1;
  g1(59,135)=T3;
  g1(60,85)=T3;
  g1(60,128)=1;
  g1(60,33)=T3;
  g1(60,135)=1;
  g1(61,137)=1;
  g1(61,138)=T3;
  g1(62,86)=T3;
  g1(62,128)=1;
  g1(62,35)=T3;
  g1(62,138)=1;
  g1(63,169)=1;
  g1(64,125)=T248;
  g1(64,128)=(-((1-params(109))*(params(36)-params(69))/(1+params(36))));
  g1(64,38)=T224;
  g1(64,142)=T3;
  g1(64,239)=T203;
  g1(64,155)=(-T198);
  g1(64,42)=(-T231);
  g1(64,162)=T176;
  g1(64,242)=(-T209);
  g1(64,243)=T198;
  g1(64,46)=T238;
  g1(64,181)=T2001;
  g1(64,244)=T216;
  g1(64,49)=T238;
  g1(64,186)=T2001;
  g1(64,246)=T216;
  g1(64,50)=(-T231);
  g1(64,188)=T176;
  g1(64,247)=(-T209);
  g1(64,51)=T238;
  g1(64,190)=T2001;
  g1(64,248)=T216;
  g1(65,90)=1;
  g1(65,140)=params(58);
  g1(65,148)=(-params(106));
  g1(65,240)=1-params(106);
  g1(65,155)=T3;
  g1(66,127)=1;
  g1(66,38)=(-(params(36)/(1-params(36))));
  g1(66,142)=T295;
  g1(66,162)=params(35);
  g1(66,188)=T3;
  g1(67,142)=1;
  g1(67,145)=T3;
  g1(67,173)=(1-params(100))*(params(39)-params(48));
  g1(67,174)=(-(params(39)*(1-params(100))+params(100)*params(48)));
  g1(68,142)=1;
  g1(68,144)=T3;
  g1(68,173)=(-(params(39)*params(100)+(1-params(100))*params(48)));
  g1(68,174)=params(100)*(params(39)-params(48));
  g1(69,115)=params(85);
  g1(69,173)=(1-params(100))*(1-params(85));
  g1(69,174)=params(100)*(1-params(85));
  g1(69,184)=params(85);
  g1(70,126)=1-T378;
  g1(70,128)=(-T378);
  g1(70,157)=1-T378;
  g1(70,41)=T378;
  g1(70,160)=T3;
  g1(70,187)=(-T392);
  g1(71,157)=1;
  g1(71,159)=T3;
  g1(71,174)=(-params(40));
  g1(71,176)=params(40);
  g1(72,157)=1;
  g1(72,158)=T3;
  g1(72,173)=(-params(40));
  g1(72,176)=params(40);
  g1(73,173)=1-params(101);
  g1(73,174)=params(101);
  g1(73,176)=T3;
  g1(74,126)=1;
  g1(74,128)=(-(T430*params(41)*(1-params(69)*(1+params(111))/(1+params(117)))));
  g1(74,40)=T430*params(41);
  g1(74,157)=(-T433);
  g1(74,241)=T440;
  g1(74,176)=T3;
  g1(74,182)=1;
  g1(75,155)=T3;
  g1(75,243)=1;
  g1(75,182)=T3;
  g1(75,245)=T463;
  g1(75,249)=T458;
  g1(76,182)=1;
  g1(76,187)=params(89);
  g1(76,194)=T3;
  g1(77,128)=(-T476);
  g1(77,41)=T476;
  g1(77,162)=(-T476);
  g1(77,187)=T476;
  g1(77,188)=1;
  g1(77,194)=T3;
  g1(78,115)=T509;
  g1(78,128)=(-T493);
  g1(78,41)=T493;
  g1(78,162)=T501;
  g1(78,164)=T3;
  g1(78,167)=T509;
  g1(78,184)=T509;
  g1(78,187)=T493;
  g1(78,188)=T501;
  g1(78,192)=T3;
  g1(78,194)=T493;
  g1(79,164)=1;
  g1(79,174)=T3;
  g1(80,164)=1;
  g1(80,175)=T3;
  g1(80,184)=T3;
  g1(81,110)=1;
  g1(81,173)=T3;
  g1(81,184)=1;
  g1(82,134)=1;
  g1(82,146)=T3;
  g1(82,175)=(-params(57));
  g1(83,118)=1;
  g1(83,178)=T3;
  g1(83,184)=1;
  g1(84,168)=1;
  g1(84,171)=T3;
  g1(84,44)=T3;
  g1(84,174)=1;
  g1(85,106)=1;
  g1(85,172)=T3;
  g1(85,45)=T3;
  g1(85,175)=1;
  g1(86,168)=1;
  g1(86,170)=T3;
  g1(86,43)=T3;
  g1(86,173)=1;
  g1(87,106)=T3;
  g1(87,148)=T3;
  g1(87,168)=1;
  g1(87,48)=T3;
  g1(87,184)=1;
  g1(88,137)=params(150);
  g1(88,146)=1-params(150);
  g1(88,189)=T3;
  g1(89,175)=1-params(150);
  g1(89,178)=params(150);
  g1(89,180)=T3;
  g1(89,184)=1-params(150);
  g1(90,144)=T665;
  g1(90,158)=T671;
  g1(90,163)=T3;
  g1(90,165)=params(149);
  g1(91,110)=1-params(149);
  g1(91,115)=params(149);
  g1(91,177)=T3;
  g1(91,184)=1;
  g1(92,155)=params(107)+1-params(107);
  g1(92,168)=(-(1-params(107)));
  g1(92,169)=(-params(107));
  g1(92,183)=(-(1-params(107)))-params(107);
  g1(93,145)=T698;
  g1(93,146)=T714;
  g1(93,154)=T702;
  g1(93,159)=T710;
  g1(93,174)=(-T702);
  g1(93,181)=T702;
  g1(93,190)=T702;
  g1(93,192)=T3;
  g1(94,72)=1;
  g1(94,128)=(-T757);
  g1(94,41)=T757;
  g1(94,162)=T748;
  g1(94,167)=T730;
  g1(94,187)=T757;
  g1(94,192)=T3;
  g1(95,142)=params(141);
  g1(95,154)=params(97);
  g1(95,157)=params(140);
  g1(95,163)=(-params(146));
  g1(95,174)=(-params(97));
  g1(95,181)=params(97);
  g1(95,189)=params(147);
  g1(95,190)=T3+params(97);
  g1(96,118)=(-((1-params(93))*params(98)));
  g1(96,128)=(-T791);
  g1(96,137)=(-((1-params(93))*params(98)));
  g1(96,36)=T791;
  g1(96,140)=T783;
  g1(96,148)=T791;
  g1(96,156)=(-T783);
  g1(96,163)=(-params(146));
  g1(96,168)=(-T791);
  g1(96,177)=(-params(146));
  g1(96,180)=params(147);
  g1(96,46)=T791;
  g1(96,181)=(-T791)-(-((1-params(93))*params(98)))-params(147)-(-params(146));
  g1(96,184)=(-((1-params(93))*params(98)));
  g1(96,189)=params(147);
  g1(96,51)=T791;
  g1(96,190)=(-T791)-(-((1-params(93))*params(98)))-params(147)-(-params(146));
  g1(97,118)=(-((1-params(93))*params(98)));
  g1(97,128)=(-T836);
  g1(97,137)=(-((1-params(93))*params(98)));
  g1(97,36)=T836;
  g1(97,143)=T3;
  g1(97,148)=T836;
  g1(97,39)=T831;
  g1(97,163)=(-params(146));
  g1(97,168)=(-T836);
  g1(97,177)=(-params(146));
  g1(97,180)=params(147);
  g1(97,46)=T836;
  g1(97,181)=(-params(147))-(-params(146))-T836;
  g1(97,184)=(-((1-params(93))*params(98)));
  g1(97,189)=params(147);
  g1(97,51)=T836;
  g1(97,190)=(-params(147))-(-params(146))-T836;
  g1(98,90)=T3;
  g1(98,140)=(-params(58));
  g1(98,148)=params(106);
  g1(98,240)=params(106);
  g1(98,156)=1;
  g1(99,174)=params(97);
  g1(99,176)=params(140);
  g1(99,177)=(-params(146));
  g1(99,180)=params(147);
  g1(99,181)=T3;
  g1(100,88)=params(97);
  g1(100,128)=(-T881);
  g1(100,137)=params(93)*params(98);
  g1(100,37)=T881;
  g1(100,148)=T881;
  g1(100,154)=(-params(97));
  g1(100,39)=T893;
  g1(100,168)=(-T881);
  g1(100,174)=params(97);
  g1(100,179)=params(93)*params(98);
  g1(100,46)=T881;
  g1(100,181)=(-(params(93)*params(98)))-T881-params(97);
  g1(100,186)=params(152);
  g1(100,51)=T881;
  g1(100,190)=(-params(152))-params(93)*params(98)-T881-params(97);
  g1(101,154)=(-(1-params(108)));
  g1(101,186)=params(108);
  g1(102,118)=params(93)*params(98);
  g1(102,128)=(-T915)-params(93)*params(98);
  g1(102,137)=params(93)*params(98);
  g1(102,37)=T915;
  g1(102,141)=T910;
  g1(102,148)=T915;
  g1(102,154)=(-params(97));
  g1(102,156)=(-T910);
  g1(102,168)=(-T915);
  g1(102,46)=T915;
  g1(102,181)=(-T915)-params(93)*params(98);
  g1(102,184)=params(93)*params(98);
  g1(102,186)=params(152);
  g1(102,51)=T915;
  g1(102,190)=(-T915)-params(93)*params(98);
  g1(103,41)=1;
  g1(103,161)=T3;
  g1(104,115)=(-params(48));
  g1(104,142)=1;
  g1(104,166)=T3;
  g1(104,184)=(-params(48));
  g1(105,115)=1;
  g1(105,128)=T953;
  g1(105,41)=(-T953);
  g1(105,162)=(-T948);
  g1(105,167)=T722;
  g1(105,184)=1;
  g1(105,187)=(-T953);
  g1(105,188)=T3;
  g1(106,165)=T3;
  g1(106,166)=T963;
  g1(106,167)=1-T963;
  g1(107,169)=T3;
  g1(107,170)=1-params(100);
  g1(107,171)=params(100);
  g1(108,118)=T986;
  g1(108,179)=T3;
  g1(108,184)=1;
  g1(109,47)=T3;
  g1(109,182)=T463;
  g1(109,185)=T3;
  g1(109,194)=T458;
  g1(110,128)=1;
  g1(110,151)=T3;
  g1(110,51)=T3;
  g1(110,190)=1;
  g1(111,128)=1;
  g1(111,38)=T3;
  g1(111,142)=1;
  g1(111,147)=T3;
  g1(112,128)=1;
  g1(112,149)=T3;
  g1(112,40)=T3;
  g1(112,157)=1;
  g1(113,128)=1;
  g1(113,150)=T3;
  g1(113,50)=T3;
  g1(113,188)=1;
  g1(114,134)=1;
  g1(114,191)=T3;
  g1(115,128)=1;
  g1(115,152)=T3;
  g1(115,52)=T3;
  g1(115,191)=1;
  g1(116,137)=1;
  g1(116,193)=T3;
  g1(117,128)=1;
  g1(117,153)=T3;
  g1(117,53)=T3;
  g1(117,193)=1;
  g1(118,1)=(-params(59));
  g1(118,72)=1;
  g1(118,262)=T3;
  g1(119,34)=(-params(60));
  g1(119,137)=1;
  g1(119,263)=T3;
  g1(120,21)=(-params(102));
  g1(120,118)=1;
  g1(120,264)=T3;
  g1(121,32)=(-params(61));
  g1(121,134)=1;
  g1(121,265)=T3;
  g1(122,6)=(-params(62));
  g1(122,90)=1;
  g1(122,266)=T3;
  g1(123,13)=(-params(63));
  g1(123,106)=1;
  g1(123,267)=T3;
  g1(124,27)=(-params(64));
  g1(124,127)=1;
  g1(124,268)=T3;
  g1(125,25)=(-params(65));
  g1(125,125)=1;
  g1(125,269)=T3;
  g1(126,5)=(-params(66));
  g1(126,88)=1;
  g1(126,195)=T3;
  g1(127,26)=(-params(67));
  g1(127,126)=1;
  g1(127,270)=T3;
  g1(128,17)=(-params(68));
  g1(128,110)=1;
  g1(128,271)=T3;
  g1(129,20)=(-params(104));
  g1(129,115)=1;
  g1(129,272)=T3;
  g1(130,28)=(-params(69));
  g1(130,128)=1;
  g1(130,273)=T3;
  g1(131,250)=T3;
  g1(131,202)=1;
  g1(132,253)=T3;
  g1(132,203)=1;
  g1(133,254)=T3;
  g1(133,204)=1;
  g1(134,252)=T3;
  g1(134,205)=1;
  g1(135,256)=T3;
  g1(135,206)=1;
  g1(136,257)=T3;
  g1(136,207)=1;
  g1(137,251)=T3;
  g1(137,208)=1;
  g1(138,259)=T3;
  g1(138,209)=1;
  g1(139,260)=T3;
  g1(139,210)=1;
  g1(140,11)=T3;
  g1(140,211)=1;
  g1(141,58)=T3;
  g1(141,212)=1;
  g1(142,56)=T3;
  g1(142,213)=1;
  g1(143,60)=T3;
  g1(143,214)=1;
  g1(144,61)=T3;
  g1(144,215)=1;
  g1(145,57)=T3;
  g1(145,216)=1;
  g1(146,63)=T3;
  g1(146,217)=1;
  g1(147,64)=T3;
  g1(147,218)=1;
  g1(148,54)=T3;
  g1(148,219)=1;
  g1(149,66)=T3;
  g1(149,220)=1;
  g1(150,67)=T3;
  g1(150,221)=1;
  g1(151,55)=T3;
  g1(151,222)=1;
  g1(152,69)=T3;
  g1(152,223)=1;
  g1(153,70)=T3;
  g1(153,224)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],153,75625);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],153,20796875);
end
end
end
end
