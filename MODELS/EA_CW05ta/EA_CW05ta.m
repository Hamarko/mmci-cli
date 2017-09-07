%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'EA_CW05ta';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('EA_CW05ta.log');
M_.exo_names = 'e_cw';
M_.exo_names_tex = 'e\_cw';
M_.exo_names_long = 'e_cw';
M_.exo_names = char(M_.exo_names, 'e_d');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_d');
M_.exo_names_long = char(M_.exo_names_long, 'e_d');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'q';
M_.endo_names_tex = 'q';
M_.endo_names_long = 'q';
M_.endo_names = char(M_.endo_names, 'lagq1');
M_.endo_names_tex = char(M_.endo_names_tex, 'lagq1');
M_.endo_names_long = char(M_.endo_names_long, 'lagq1');
M_.endo_names = char(M_.endo_names, 'cwp');
M_.endo_names_tex = char(M_.endo_names_tex, 'cwp');
M_.endo_names_long = char(M_.endo_names_long, 'cwp');
M_.endo_names = char(M_.endo_names, 'lagcwp1');
M_.endo_names_tex = char(M_.endo_names_tex, 'lagcwp1');
M_.endo_names_long = char(M_.endo_names_long, 'lagcwp1');
M_.endo_names = char(M_.endo_names, 'lagcwp2');
M_.endo_names_tex = char(M_.endo_names_tex, 'lagcwp2');
M_.endo_names_long = char(M_.endo_names_long, 'lagcwp2');
M_.endo_names = char(M_.endo_names, 'pi1');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi1');
M_.endo_names_long = char(M_.endo_names_long, 'pi1');
M_.endo_names = char(M_.endo_names, 'lagpi11');
M_.endo_names_tex = char(M_.endo_names_tex, 'lagpi11');
M_.endo_names_long = char(M_.endo_names_long, 'lagpi11');
M_.endo_names = char(M_.endo_names, 'lagpi12');
M_.endo_names_tex = char(M_.endo_names_tex, 'lagpi12');
M_.endo_names_long = char(M_.endo_names_long, 'lagpi12');
M_.endo_names = char(M_.endo_names, 'infl');
M_.endo_names_tex = char(M_.endo_names_tex, 'infl');
M_.endo_names_long = char(M_.endo_names_long, 'infl');
M_.endo_names = char(M_.endo_names, 'is');
M_.endo_names_tex = char(M_.endo_names_tex, 'is');
M_.endo_names_long = char(M_.endo_names_long, 'is');
M_.endo_names = char(M_.endo_names, 'lagis1');
M_.endo_names_tex = char(M_.endo_names_tex, 'lagis1');
M_.endo_names_long = char(M_.endo_names_long, 'lagis1');
M_.endo_names = char(M_.endo_names, 'dis');
M_.endo_names_tex = char(M_.endo_names_tex, 'dis');
M_.endo_names_long = char(M_.endo_names_long, 'dis');
M_.endo_names = char(M_.endo_names, 'il');
M_.endo_names_tex = char(M_.endo_names_tex, 'il');
M_.endo_names_long = char(M_.endo_names_long, 'il');
M_.endo_names = char(M_.endo_names, 'rl');
M_.endo_names_tex = char(M_.endo_names_tex, 'rl');
M_.endo_names_long = char(M_.endo_names_long, 'rl');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_72');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_72');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_72');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_76');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_76');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_76');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_80');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_80');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_80');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_107');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_107');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_107');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_111');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_111');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_111');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_115');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_115');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_115');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_142');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_142');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_142');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_146');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_146');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_146');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_150');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_150');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_150');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_185');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_185');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_185');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_188');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_188');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_188');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_197');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_197');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_197');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_200');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_200');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_200');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_250');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_250');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_250');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_252');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_252');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_252');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_254');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_254');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_254');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_257');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_257');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_257');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_260');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_260');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_260');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_263');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_263');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_263');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_276');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_276');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_276');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_274');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_274');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_274');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_272');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_272');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_272');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_270');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_270');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_270');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_269');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_269');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_269');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_17_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_17\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_17_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_17_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_17\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_17_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_17_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_17\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_17_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_16_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_16\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_16_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_16_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_16\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_16_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_16_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_16\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_16_3');
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 's');
M_.param_names_tex = char(M_.param_names_tex, 's');
M_.param_names_long = char(M_.param_names_long, 's');
M_.param_names = char(M_.param_names, 'f0');
M_.param_names_tex = char(M_.param_names_tex, 'f0');
M_.param_names_long = char(M_.param_names_long, 'f0');
M_.param_names = char(M_.param_names, 'f1');
M_.param_names_tex = char(M_.param_names_tex, 'f1');
M_.param_names_long = char(M_.param_names_long, 'f1');
M_.param_names = char(M_.param_names, 'f2');
M_.param_names_tex = char(M_.param_names_tex, 'f2');
M_.param_names_long = char(M_.param_names_long, 'f2');
M_.param_names = char(M_.param_names, 'f3');
M_.param_names_tex = char(M_.param_names_tex, 'f3');
M_.param_names_long = char(M_.param_names_long, 'f3');
M_.param_names = char(M_.param_names, 'gamma1');
M_.param_names_tex = char(M_.param_names_tex, 'gamma1');
M_.param_names_long = char(M_.param_names_long, 'gamma1');
M_.param_names = char(M_.param_names, 'delta0');
M_.param_names_tex = char(M_.param_names_tex, 'delta0');
M_.param_names_long = char(M_.param_names_long, 'delta0');
M_.param_names = char(M_.param_names, 'delta1');
M_.param_names_tex = char(M_.param_names_tex, 'delta1');
M_.param_names_long = char(M_.param_names_long, 'delta1');
M_.param_names = char(M_.param_names, 'delta2');
M_.param_names_tex = char(M_.param_names_tex, 'delta2');
M_.param_names_long = char(M_.param_names_long, 'delta2');
M_.param_names = char(M_.param_names, 'delta3');
M_.param_names_tex = char(M_.param_names_tex, 'delta3');
M_.param_names_long = char(M_.param_names_long, 'delta3');
M_.param_names = char(M_.param_names, 'sigma_e_d');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_e\_d');
M_.param_names_long = char(M_.param_names_long, 'sigma_e_d');
M_.param_names = char(M_.param_names, 'sigma_e_cw');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_e\_cw');
M_.param_names_long = char(M_.param_names_long, 'sigma_e_cw');
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 55;
M_.param_nbr = 46;
M_.orig_endo_nbr = 19;
M_.aux_vars(1).endo_index = 20;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 21;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 22;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 23;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 24;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 25;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 26;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 27;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 28;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 29;
M_.aux_vars(10).type = 0;
M_.aux_vars(11).endo_index = 30;
M_.aux_vars(11).type = 0;
M_.aux_vars(12).endo_index = 31;
M_.aux_vars(12).type = 0;
M_.aux_vars(13).endo_index = 32;
M_.aux_vars(13).type = 0;
M_.aux_vars(14).endo_index = 33;
M_.aux_vars(14).type = 0;
M_.aux_vars(15).endo_index = 34;
M_.aux_vars(15).type = 0;
M_.aux_vars(16).endo_index = 35;
M_.aux_vars(16).type = 0;
M_.aux_vars(17).endo_index = 36;
M_.aux_vars(17).type = 0;
M_.aux_vars(18).endo_index = 37;
M_.aux_vars(18).type = 0;
M_.aux_vars(19).endo_index = 38;
M_.aux_vars(19).type = 0;
M_.aux_vars(20).endo_index = 39;
M_.aux_vars(20).type = 0;
M_.aux_vars(21).endo_index = 40;
M_.aux_vars(21).type = 0;
M_.aux_vars(22).endo_index = 41;
M_.aux_vars(22).type = 0;
M_.aux_vars(23).endo_index = 42;
M_.aux_vars(23).type = 0;
M_.aux_vars(24).endo_index = 43;
M_.aux_vars(24).type = 0;
M_.aux_vars(25).endo_index = 44;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 19;
M_.aux_vars(25).orig_lead_lag = -1;
M_.aux_vars(26).endo_index = 45;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 19;
M_.aux_vars(26).orig_lead_lag = -2;
M_.aux_vars(27).endo_index = 46;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 19;
M_.aux_vars(27).orig_lead_lag = -3;
M_.aux_vars(28).endo_index = 47;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 18;
M_.aux_vars(28).orig_lead_lag = -1;
M_.aux_vars(29).endo_index = 48;
M_.aux_vars(29).type = 1;
M_.aux_vars(29).orig_index = 18;
M_.aux_vars(29).orig_lead_lag = -2;
M_.aux_vars(30).endo_index = 49;
M_.aux_vars(30).type = 1;
M_.aux_vars(30).orig_index = 18;
M_.aux_vars(30).orig_lead_lag = -3;
M_.aux_vars(31).endo_index = 50;
M_.aux_vars(31).type = 1;
M_.aux_vars(31).orig_index = 15;
M_.aux_vars(31).orig_lead_lag = -1;
M_.aux_vars(32).endo_index = 51;
M_.aux_vars(32).type = 1;
M_.aux_vars(32).orig_index = 15;
M_.aux_vars(32).orig_lead_lag = -2;
M_.aux_vars(33).endo_index = 52;
M_.aux_vars(33).type = 1;
M_.aux_vars(33).orig_index = 15;
M_.aux_vars(33).orig_lead_lag = -3;
M_.aux_vars(34).endo_index = 53;
M_.aux_vars(34).type = 1;
M_.aux_vars(34).orig_index = 17;
M_.aux_vars(34).orig_lead_lag = -1;
M_.aux_vars(35).endo_index = 54;
M_.aux_vars(35).type = 1;
M_.aux_vars(35).orig_index = 17;
M_.aux_vars(35).orig_lead_lag = -2;
M_.aux_vars(36).endo_index = 55;
M_.aux_vars(36).type = 1;
M_.aux_vars(36).orig_index = 17;
M_.aux_vars(36).orig_lead_lag = -3;
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('EA_CW05ta_static');
erase_compiled_function('EA_CW05ta_dynamic');
M_.lead_lag_incidence = [
 1 27 82;
 2 28 0;
 3 29 0;
 4 30 0;
 5 31 0;
 6 32 83;
 7 33 0;
 8 34 0;
 0 35 0;
 9 36 84;
 0 37 0;
 0 38 0;
 0 39 0;
 10 40 0;
 11 41 0;
 0 42 0;
 12 43 85;
 13 44 86;
 14 45 87;
 0 46 88;
 0 47 89;
 0 48 90;
 0 49 91;
 0 50 92;
 0 51 93;
 0 52 94;
 0 53 95;
 0 54 96;
 0 55 97;
 0 56 98;
 0 57 99;
 0 58 100;
 0 59 101;
 0 60 102;
 0 61 103;
 0 62 104;
 0 63 105;
 0 64 106;
 0 65 107;
 0 66 108;
 0 67 109;
 0 68 110;
 0 69 111;
 15 70 0;
 16 71 0;
 17 72 0;
 18 73 0;
 19 74 0;
 20 75 0;
 21 76 0;
 22 77 0;
 23 78 0;
 24 79 0;
 25 80 0;
 26 81 0;]';
M_.nstatic = 5;
M_.nfwrd   = 24;
M_.npred   = 20;
M_.nboth   = 6;
M_.nsfwrd   = 30;
M_.nspred   = 26;
M_.ndynamic   = 50;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(55, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(46, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 175;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
M_.params( 35 ) = 0.0456;
s = M_.params( 35 );
M_.params( 36 ) = 0.25+1.5*M_.params(35);
f0 = M_.params( 36 );
M_.params( 37 ) = 0.25+M_.params(35)*0.5;
f1 = M_.params( 37 );
M_.params( 38 ) = 0.25+M_.params(35)*(-0.5);
f2 = M_.params( 38 );
M_.params( 39 ) = 0.25+M_.params(35)*(-1.5);
f3 = M_.params( 39 );
M_.params( 40 ) = 0.0115;
gamma1 = M_.params( 40 );
M_.params( 41 ) = 0.0027;
delta0 = M_.params( 41 );
M_.params( 42 ) = 1.1807;
delta1 = M_.params( 42 );
M_.params( 43 ) = (-0.2045);
delta2 = M_.params( 43 );
M_.params( 44 ) = (-0.0947);
delta3 = M_.params( 44 );
M_.params( 45 ) = 1.00;
sigma_e_d = M_.params( 45 );
M_.params( 46 ) = 1.00;
sigma_e_cw = M_.params( 46 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);
M_.params( 32 ) = 100;
std_r_ = M_.params( 32 );
M_.params( 34 ) = 0;
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 2.36391556785721e-05;
M_.Sigma_e(2, 2) = 2.94329732052579e-05;
M_.Sigma_e(1, 2) = (-6.44793273694892e-06);
M_.Sigma_e(2, 1) = M_.Sigma_e(1, 2);
M_.sigma_e_is_diagonal = 0;
save('EA_CW05ta_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('EA_CW05ta_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('EA_CW05ta_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('EA_CW05ta_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('EA_CW05ta_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
