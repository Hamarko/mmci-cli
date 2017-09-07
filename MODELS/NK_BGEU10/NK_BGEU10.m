%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'NK_BGEU10';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('NK_BGEU10.log');
M_.exo_names = 'a_';
M_.exo_names_tex = 'a\_';
M_.exo_names_long = 'a_';
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'pi';
M_.endo_names_tex = 'pi';
M_.endo_names_long = 'pi';
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'xhat');
M_.endo_names_tex = char(M_.endo_names_tex, 'xhat');
M_.endo_names_long = char(M_.endo_names_long, 'xhat');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, 'n');
M_.endo_names_long = char(M_.endo_names_long, 'n');
M_.endo_names = char(M_.endo_names, 'uhat');
M_.endo_names_tex = char(M_.endo_names_tex, 'uhat');
M_.endo_names_long = char(M_.endo_names_long, 'uhat');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'xhatf');
M_.endo_names_tex = char(M_.endo_names_tex, 'xhatf');
M_.endo_names_long = char(M_.endo_names_long, 'xhatf');
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf');
M_.endo_names_long = char(M_.endo_names_long, 'cf');
M_.endo_names = char(M_.endo_names, 'nf');
M_.endo_names_tex = char(M_.endo_names_tex, 'nf');
M_.endo_names_long = char(M_.endo_names_long, 'nf');
M_.endo_names = char(M_.endo_names, 'uhatf');
M_.endo_names_tex = char(M_.endo_names_tex, 'uhatf');
M_.endo_names_long = char(M_.endo_names_long, 'uhatf');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'yf');
M_.endo_names_tex = char(M_.endo_names_tex, 'yf');
M_.endo_names_long = char(M_.endo_names_long, 'yf');
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
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names_long = char(M_.endo_names_long, 'fispol');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_80');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_80');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_80');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_84');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_84');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_84');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_88');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_88');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_88');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_115');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_115');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_115');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_119');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_119');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_119');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_123');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_123');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_123');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_150');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_150');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_150');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_154');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_154');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_154');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_158');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_158');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_158');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_0_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_0_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_19_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_19\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_19_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_19_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_19\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_19_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_19_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_19\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_19_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_15_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_15\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_15_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_15_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_15\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_15_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_15_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_15\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_15_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_17_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_17\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_17_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_17_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_17\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_17_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_17_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_17\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_17_3');
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
M_.param_names = char(M_.param_names, 'gam');
M_.param_names_tex = char(M_.param_names_tex, 'gam');
M_.param_names_long = char(M_.param_names_long, 'gam');
M_.param_names = char(M_.param_names, 'alf');
M_.param_names_tex = char(M_.param_names_tex, 'alf');
M_.param_names_long = char(M_.param_names_long, 'alf');
M_.param_names = char(M_.param_names, 'the');
M_.param_names_tex = char(M_.param_names_tex, 'the');
M_.param_names_long = char(M_.param_names_long, 'the');
M_.param_names = char(M_.param_names, 'bet');
M_.param_names_tex = char(M_.param_names_tex, 'bet');
M_.param_names_long = char(M_.param_names_long, 'bet');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'eps');
M_.param_names_tex = char(M_.param_names_tex, 'eps');
M_.param_names_long = char(M_.param_names_long, 'eps');
M_.param_names = char(M_.param_names, 'lam');
M_.param_names_tex = char(M_.param_names_tex, 'lam');
M_.param_names_long = char(M_.param_names_long, 'lam');
M_.param_names = char(M_.param_names, 'M');
M_.param_names_tex = char(M_.param_names_tex, 'M');
M_.param_names_long = char(M_.param_names_long, 'M');
M_.param_names = char(M_.param_names, 'gdel');
M_.param_names_tex = char(M_.param_names_tex, 'gdel');
M_.param_names_long = char(M_.param_names_long, 'gdel');
M_.param_names = char(M_.param_names, 'ra');
M_.param_names_tex = char(M_.param_names_tex, 'ra');
M_.param_names_long = char(M_.param_names_long, 'ra');
M_.param_names = char(M_.param_names, 'x_');
M_.param_names_tex = char(M_.param_names_tex, 'x\_');
M_.param_names_long = char(M_.param_names_long, 'x_');
M_.param_names = char(M_.param_names, 'u');
M_.param_names_tex = char(M_.param_names_tex, 'u');
M_.param_names_long = char(M_.param_names_long, 'u');
M_.param_names = char(M_.param_names, 'del');
M_.param_names_tex = char(M_.param_names_tex, 'del');
M_.param_names_long = char(M_.param_names_long, 'del');
M_.param_names = char(M_.param_names, 'g');
M_.param_names_tex = char(M_.param_names_tex, 'g');
M_.param_names_long = char(M_.param_names_long, 'g');
M_.param_names = char(M_.param_names, 'B');
M_.param_names_tex = char(M_.param_names_tex, 'B');
M_.param_names_long = char(M_.param_names_long, 'B');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, 'chi');
M_.param_names_long = char(M_.param_names_long, 'chi');
M_.param_names = char(M_.param_names, 'bphi');
M_.param_names_tex = char(M_.param_names_tex, 'bphi');
M_.param_names_long = char(M_.param_names_long, 'bphi');
M_.param_names = char(M_.param_names, 'alfux');
M_.param_names_tex = char(M_.param_names_tex, 'alfux');
M_.param_names_long = char(M_.param_names_long, 'alfux');
M_.param_names = char(M_.param_names, 'gmu');
M_.param_names_tex = char(M_.param_names_tex, 'gmu');
M_.param_names_long = char(M_.param_names_long, 'gmu');
M_.param_names = char(M_.param_names, 'xi0');
M_.param_names_tex = char(M_.param_names_tex, 'xi0');
M_.param_names_long = char(M_.param_names_long, 'xi0');
M_.param_names = char(M_.param_names, 'xi1');
M_.param_names_tex = char(M_.param_names_tex, 'xi1');
M_.param_names_long = char(M_.param_names_long, 'xi1');
M_.param_names = char(M_.param_names, 'k0');
M_.param_names_tex = char(M_.param_names_tex, 'k0');
M_.param_names_long = char(M_.param_names_long, 'k0');
M_.param_names = char(M_.param_names, 'kl');
M_.param_names_tex = char(M_.param_names_tex, 'kl');
M_.param_names_long = char(M_.param_names_long, 'kl');
M_.param_names = char(M_.param_names, 'kf');
M_.param_names_tex = char(M_.param_names_tex, 'kf');
M_.param_names_long = char(M_.param_names_long, 'kf');
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, 'rho');
M_.param_names_long = char(M_.param_names_long, 'rho');
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 44;
M_.param_nbr = 59;
M_.orig_endo_nbr = 21;
M_.aux_vars(1).endo_index = 22;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 23;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 24;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 25;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 26;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 27;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 28;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 29;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 30;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 31;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 1;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 32;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 1;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 33;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 20;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 34;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 20;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 35;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 20;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 36;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 19;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 37;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 19;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 38;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 19;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 39;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 16;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 40;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 16;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 41;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 16;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 42;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 18;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 43;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 18;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 44;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 18;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('NK_BGEU10_static');
erase_compiled_function('NK_BGEU10_dynamic');
M_.lead_lag_incidence = [
 1 23 67;
 0 24 0;
 0 25 68;
 0 26 69;
 2 27 70;
 3 28 0;
 0 29 0;
 0 30 0;
 0 31 71;
 0 32 72;
 4 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 5 38 0;
 0 39 0;
 6 40 73;
 7 41 74;
 8 42 75;
 0 43 0;
 0 44 76;
 0 45 77;
 0 46 78;
 0 47 79;
 0 48 80;
 0 49 81;
 0 50 82;
 0 51 83;
 0 52 84;
 9 53 0;
 10 54 0;
 11 55 0;
 12 56 0;
 13 57 0;
 14 58 0;
 15 59 0;
 16 60 0;
 17 61 0;
 18 62 0;
 19 63 0;
 20 64 0;
 21 65 0;
 22 66 0;]';
M_.nstatic = 9;
M_.nfwrd   = 13;
M_.npred   = 17;
M_.nboth   = 5;
M_.nsfwrd   = 18;
M_.nspred   = 22;
M_.ndynamic   = 35;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(44, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(59, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 147;
M_.NNZDerivatives(2) = 4;
M_.NNZDerivatives(3) = -1;
M_.params( 45 ) = 0.25;
x_ = M_.params( 45 );
M_.params( 46 ) = 0.1;
u = M_.params( 46 );
M_.params( 49 ) = 0.119047619047619;
B = M_.params( 49 );
M_.params( 35 ) = 0.5;
gam = M_.params( 35 );
M_.params( 36 ) = 1;
alf = M_.params( 36 );
M_.params( 37 ) = 1;
the = M_.params( 37 );
M_.params( 38 ) = 0.99;
bet = M_.params( 38 );
M_.params( 39 ) = 1;
phi = M_.params( 39 );
M_.params( 40 ) = 6;
eps = M_.params( 40 );
M_.params( 41 ) = 0.08333333333333333;
lam = M_.params( 41 );
M_.params( 42 ) = M_.params(40)/(M_.params(40)-1);
M = M_.params( 42 );
M_.params( 43 ) = 0.01;
gdel = M_.params( 43 );
M_.params( 44 ) = 0.9;
ra = M_.params( 44 );
M_.params( 47 ) = M_.params(46)*M_.params(45)/((1-M_.params(46))*(1-M_.params(45)));
del = M_.params( 47 );
M_.params( 48 ) = M_.params(49)*M_.params(45)^M_.params(36);
g = M_.params( 48 );
N      = 1-u;
M_.params( 50 ) = (1/M_.params(42)-(1-M_.params(38)*(1-M_.params(47)))*(1+M_.params(37))*M_.params(48)-M_.params(45)*M_.params(48)*M_.params(38)*(1-M_.params(47))*M_.params(37))/(N^(1+M_.params(39))*(1-M_.params(47)*M_.params(48)));
chi = M_.params( 50 );
M_.params( 51 ) = 1-M_.params(42)*(1-M_.params(38)*(1-M_.params(47)))*M_.params(48);
bphi = M_.params( 51 );
M_.params( 52 ) = (1+M_.params(39))*M_.params(41)*M_.params(50)*(1-M_.params(46))^(M_.params(39)-1)/M_.params(40);
alfux = M_.params( 52 );
M_.params( 53 ) = M_.params(42)*M_.params(48)/(1-M_.params(46));
gmu = M_.params( 53 );
M_.params( 54 ) = (1-M_.params(48)*(1+M_.params(36)))/(1-M_.params(47)*M_.params(48));
xi0 = M_.params( 54 );
M_.params( 55 ) = (1-M_.params(47))*M_.params(48)*(1+(1-M_.params(45))*M_.params(36))/(1-M_.params(47)*M_.params(48));
xi1 = M_.params( 55 );
M_.params( 56 ) = M_.params(41)*(M_.params(36)*M_.params(53)/M_.params(47)*(1+(1-M_.params(45))*M_.params(38)*(1-M_.params(47))^2)+M_.params(38)*(1-M_.params(47))*M_.params(53)*(M_.params(55)-M_.params(54)));
k0 = M_.params( 56 );
M_.params( 57 ) = M_.params(41)*((1-M_.params(45))*(1-M_.params(47))*M_.params(53)*M_.params(36)/M_.params(47)+M_.params(38)*(1-M_.params(47))*M_.params(53)*M_.params(55));
kl = M_.params( 57 );
M_.params( 58 ) = M_.params(53)*(1-M_.params(47))*M_.params(38)*M_.params(41)*(M_.params(36)/M_.params(47)-M_.params(54));
kf = M_.params( 58 );
M_.params( 59 ) = (-log(M_.params(38)));
rho = M_.params( 59 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);                                                            
M_.params( 34 ) = 1;
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.sigma_e_is_diagonal = 1;
save('NK_BGEU10_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('NK_BGEU10_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('NK_BGEU10_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('NK_BGEU10_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('NK_BGEU10_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
