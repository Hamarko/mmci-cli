function [residual, g1, g2, g3] = US_CPS10_static(y, x, params)
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

residual = zeros( 41, 1);

%
% Model equations
%

T173 = (1-params(50)*params(42))*(1-params(42))/((1+params(50)*params(37))*params(42)*(1+params(35)*(1+1/params(36))));
T208 = params(53)^2+params(50)*params(41)^2;
lhs =y(14);
rhs =4*y(5);
residual(1)= lhs-rhs;
lhs =y(15);
rhs =y(1)+y(1)+y(1)+y(1);
residual(2)= lhs-rhs;
lhs =y(16);
rhs =4*(y(1)-y(9));
residual(3)= lhs-rhs;
lhs =y(17);
rhs =y(2)-y(10);
residual(4)= lhs-rhs;
lhs =y(18);
rhs =y(2);
residual(5)= lhs-rhs;
lhs =y(14);
rhs =params(32)*x(5)+y(18)*params(31)+y(18)*params(30)+y(18)*params(29)+y(18)*params(28)+y(18)*params(27)+y(18)*params(26)+y(18)*params(25)+y(18)*params(24)+y(18)*params(23)+y(17)*params(22)+y(17)*params(21)+y(17)*params(20)+y(17)*params(19)+y(17)*params(18)+y(17)*params(17)+y(17)*params(16)+y(17)*params(15)+y(17)*params(14)+y(16)*params(13)+y(16)*params(12)+y(16)*params(11)+y(16)*params(10)+y(16)*params(6)+y(16)*params(5)+y(14)*params(1)+y(14)*params(2)+y(14)*params(3)+y(14)*params(4)+y(16)*params(7)+y(16)*params(8)+y(16)*params(9);
residual(6)= lhs-rhs;
lhs =y(1)-y(1)*params(50)/(1+params(50)*params(37))-y(7)-T173*y(4);
rhs =y(1)*params(37)/(1+params(50)*params(37));
residual(7)= lhs-rhs;
residual(8) = y(12);
lhs =(params(53)-params(50)*params(41))*(params(53)-params(41))*y(3)-(params(53)-params(41))*(params(53)-params(50)*params(41)*params(45))*y(8)-(params(53)*params(50)*params(41)*params(43)-params(53)*params(41))*y(6)+y(2)*T208-y(2)*params(53)*params(50)*params(41);
rhs =y(2)*params(53)*params(41);
residual(9)= lhs-rhs;
lhs =(params(53)-params(50)*params(41))*(params(53)-params(41))*y(11)-(params(53)-params(41))*(params(53)-params(50)*params(41)*params(45))*y(8)-(params(53)*params(50)*params(41)*params(43)-params(53)*params(41))*y(6)+y(10)*T208-y(10)*params(53)*params(50)*params(41);
rhs =y(10)*params(53)*params(41);
residual(10)= lhs-rhs;
residual(11) = y(1)+y(3)-y(5)-y(3)+params(43)*y(6);
residual(12) = params(43)*y(6)+y(11)-y(13)-y(11);
residual(13) = y(3)+y(4)-y(8)-y(2)*params(35);
residual(14) = y(11)+y(12)-y(8)-y(10)*params(35);
lhs =y(6);
rhs =params(43)*y(6)+x(1);
residual(15)= lhs-rhs;
lhs =y(7);
rhs =y(7)*params(44)+x(2);
residual(16)= lhs-rhs;
lhs =y(9);
rhs =y(9)*params(54)+x(4);
residual(17)= lhs-rhs;
lhs =y(8);
rhs =params(45)*y(8)+x(3);
residual(18)= lhs-rhs;
lhs =y(19);
rhs =y(16);
residual(19)= lhs-rhs;
lhs =y(20);
rhs =y(16);
residual(20)= lhs-rhs;
lhs =y(21);
rhs =y(16);
residual(21)= lhs-rhs;
lhs =y(22);
rhs =y(17);
residual(22)= lhs-rhs;
lhs =y(23);
rhs =y(17);
residual(23)= lhs-rhs;
lhs =y(24);
rhs =y(17);
residual(24)= lhs-rhs;
lhs =y(25);
rhs =y(18);
residual(25)= lhs-rhs;
lhs =y(26);
rhs =y(18);
residual(26)= lhs-rhs;
lhs =y(27);
rhs =y(18);
residual(27)= lhs-rhs;
lhs =y(28);
rhs =y(1);
residual(28)= lhs-rhs;
lhs =y(29);
rhs =y(1);
residual(29)= lhs-rhs;
lhs =y(30);
rhs =y(18);
residual(30)= lhs-rhs;
lhs =y(31);
rhs =y(18);
residual(31)= lhs-rhs;
lhs =y(32);
rhs =y(18);
residual(32)= lhs-rhs;
lhs =y(33);
rhs =y(17);
residual(33)= lhs-rhs;
lhs =y(34);
rhs =y(17);
residual(34)= lhs-rhs;
lhs =y(35);
rhs =y(17);
residual(35)= lhs-rhs;
lhs =y(36);
rhs =y(14);
residual(36)= lhs-rhs;
lhs =y(37);
rhs =y(14);
residual(37)= lhs-rhs;
lhs =y(38);
rhs =y(14);
residual(38)= lhs-rhs;
lhs =y(39);
rhs =y(16);
residual(39)= lhs-rhs;
lhs =y(40);
rhs =y(16);
residual(40)= lhs-rhs;
lhs =y(41);
rhs =y(16);
residual(41)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(41, 41);

  %
  % Jacobian matrix
  %

  g1(1,5)=(-4);
  g1(1,14)=1;
  g1(2,1)=(-4);
  g1(2,15)=1;
  g1(3,1)=(-4);
  g1(3,9)=4;
  g1(3,16)=1;
  g1(4,2)=(-1);
  g1(4,10)=1;
  g1(4,17)=1;
  g1(5,2)=(-1);
  g1(5,18)=1;
  g1(6,14)=1-(params(4)+params(3)+params(1)+params(2));
  g1(6,16)=(-(params(13)+params(12)+params(11)+params(10)+params(9)+params(8)+params(7)+params(6)+params(5)));
  g1(6,17)=(-(params(22)+params(21)+params(20)+params(19)+params(18)+params(17)+params(16)+params(15)+params(14)));
  g1(6,18)=(-(params(31)+params(30)+params(29)+params(28)+params(27)+params(26)+params(25)+params(24)+params(23)));
  g1(7,1)=1-params(50)/(1+params(50)*params(37))-params(37)/(1+params(50)*params(37));
  g1(7,4)=(-T173);
  g1(7,7)=(-1);
  g1(8,12)=1;
  g1(9,2)=T208-params(53)*params(50)*params(41)-params(53)*params(41);
  g1(9,3)=(params(53)-params(50)*params(41))*(params(53)-params(41));
  g1(9,6)=(-(params(53)*params(50)*params(41)*params(43)-params(53)*params(41)));
  g1(9,8)=(-((params(53)-params(41))*(params(53)-params(50)*params(41)*params(45))));
  g1(10,6)=(-(params(53)*params(50)*params(41)*params(43)-params(53)*params(41)));
  g1(10,8)=(-((params(53)-params(41))*(params(53)-params(50)*params(41)*params(45))));
  g1(10,10)=T208-params(53)*params(50)*params(41)-params(53)*params(41);
  g1(10,11)=(params(53)-params(50)*params(41))*(params(53)-params(41));
  g1(11,1)=1;
  g1(11,5)=(-1);
  g1(11,6)=params(43);
  g1(12,6)=params(43);
  g1(12,13)=(-1);
  g1(13,2)=(-params(35));
  g1(13,3)=1;
  g1(13,4)=1;
  g1(13,8)=(-1);
  g1(14,8)=(-1);
  g1(14,10)=(-params(35));
  g1(14,11)=1;
  g1(14,12)=1;
  g1(15,6)=1-params(43);
  g1(16,7)=1-params(44);
  g1(17,9)=1-params(54);
  g1(18,8)=1-params(45);
  g1(19,16)=(-1);
  g1(19,19)=1;
  g1(20,16)=(-1);
  g1(20,20)=1;
  g1(21,16)=(-1);
  g1(21,21)=1;
  g1(22,17)=(-1);
  g1(22,22)=1;
  g1(23,17)=(-1);
  g1(23,23)=1;
  g1(24,17)=(-1);
  g1(24,24)=1;
  g1(25,18)=(-1);
  g1(25,25)=1;
  g1(26,18)=(-1);
  g1(26,26)=1;
  g1(27,18)=(-1);
  g1(27,27)=1;
  g1(28,1)=(-1);
  g1(28,28)=1;
  g1(29,1)=(-1);
  g1(29,29)=1;
  g1(30,18)=(-1);
  g1(30,30)=1;
  g1(31,18)=(-1);
  g1(31,31)=1;
  g1(32,18)=(-1);
  g1(32,32)=1;
  g1(33,17)=(-1);
  g1(33,33)=1;
  g1(34,17)=(-1);
  g1(34,34)=1;
  g1(35,17)=(-1);
  g1(35,35)=1;
  g1(36,14)=(-1);
  g1(36,36)=1;
  g1(37,14)=(-1);
  g1(37,37)=1;
  g1(38,14)=(-1);
  g1(38,38)=1;
  g1(39,16)=(-1);
  g1(39,39)=1;
  g1(40,16)=(-1);
  g1(40,40)=1;
  g1(41,16)=(-1);
  g1(41,41)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],41,1681);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],41,68921);
end
end
end
end
