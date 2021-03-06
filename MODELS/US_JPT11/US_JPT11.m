%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
clear global
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'US_JPT11';
%
% Some global variables initialization
%
global_initialization;
diary off;
logname_ = 'US_JPT11.log';
if exist(logname_, 'file')
    delete(logname_)
end
diary(logname_)
M_.exo_names = 'Rs';
M_.exo_names_tex = 'Rs';
M_.exo_names = char(M_.exo_names, 'zs');
M_.exo_names_tex = char(M_.exo_names_tex, 'zs');
M_.exo_names = char(M_.exo_names, 'mius');
M_.exo_names_tex = char(M_.exo_names_tex, 'mius');
M_.exo_names = char(M_.exo_names, 'lambdaps');
M_.exo_names_tex = char(M_.exo_names_tex, 'lambdaps');
M_.exo_names = char(M_.exo_names, 'lambdaws');
M_.exo_names_tex = char(M_.exo_names_tex, 'lambdaws');
M_.exo_names = char(M_.exo_names, 'bs');
M_.exo_names_tex = char(M_.exo_names_tex, 'bs');
M_.exo_names = char(M_.exo_names, 'upsilons');
M_.exo_names_tex = char(M_.exo_names_tex, 'upsilons');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.endo_names = 'y';
M_.endo_names_tex = 'y';
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names = char(M_.endo_names, 'L');
M_.endo_names_tex = char(M_.endo_names_tex, 'L');
M_.endo_names = char(M_.endo_names, 'mpk');
M_.endo_names_tex = char(M_.endo_names_tex, 'mpk');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, 'p');
M_.endo_names = char(M_.endo_names, 's');
M_.endo_names_tex = char(M_.endo_names_tex, 's');
M_.endo_names = char(M_.endo_names, 'lambda');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambda');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, 'u');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names = char(M_.endo_names, 'kbar');
M_.endo_names_tex = char(M_.endo_names_tex, 'kbar');
M_.endo_names = char(M_.endo_names, 'wgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'wgap');
M_.endo_names = char(M_.endo_names, 'gdp');
M_.endo_names_tex = char(M_.endo_names_tex, 'gdp');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names = char(M_.endo_names, 'miu');
M_.endo_names_tex = char(M_.endo_names_tex, 'miu');
M_.endo_names = char(M_.endo_names, 'lambdap');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambdap');
M_.endo_names = char(M_.endo_names, 'lambdaw');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambdaw');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, 'b');
M_.endo_names = char(M_.endo_names, 'mp');
M_.endo_names_tex = char(M_.endo_names_tex, 'mp');
M_.endo_names = char(M_.endo_names, 'ARMAlambdap');
M_.endo_names_tex = char(M_.endo_names_tex, 'ARMAlambdap');
M_.endo_names = char(M_.endo_names, 'ARMAlambdaw');
M_.endo_names_tex = char(M_.endo_names_tex, 'ARMAlambdaw');
M_.endo_names = char(M_.endo_names, 'ystar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ystar');
M_.endo_names = char(M_.endo_names, 'kstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'kstar');
M_.endo_names = char(M_.endo_names, 'Lstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'Lstar');
M_.endo_names = char(M_.endo_names, 'mpkstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'mpkstar');
M_.endo_names = char(M_.endo_names, 'wstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'wstar');
M_.endo_names = char(M_.endo_names, 'sstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'sstar');
M_.endo_names = char(M_.endo_names, 'lambdastar');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambdastar');
M_.endo_names = char(M_.endo_names, 'cstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'cstar');
M_.endo_names = char(M_.endo_names, 'Rstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rstar');
M_.endo_names = char(M_.endo_names, 'ustar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ustar');
M_.endo_names = char(M_.endo_names, 'istar');
M_.endo_names_tex = char(M_.endo_names_tex, 'istar');
M_.endo_names = char(M_.endo_names, 'kbarstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'kbarstar');
M_.endo_names = char(M_.endo_names, 'wgapstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'wgapstar');
M_.endo_names = char(M_.endo_names, 'gdpstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'gdpstar');
M_.endo_names = char(M_.endo_names, 'Rk');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rk');
M_.endo_names = char(M_.endo_names, 'Rkstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rkstar');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names = char(M_.endo_names, 'qstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'qstar');
M_.endo_names = char(M_.endo_names, 'Rd');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rd');
M_.endo_names = char(M_.endo_names, 'Rdstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rdstar');
M_.endo_names = char(M_.endo_names, 'upsilon');
M_.endo_names_tex = char(M_.endo_names_tex, 'upsilon');
M_.endo_names = char(M_.endo_names, 'gs');
M_.endo_names_tex = char(M_.endo_names_tex, 'gs');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_165');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_165');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_169');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_169');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_173');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_173');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_200');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_200');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_204');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_204');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_208');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_208');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_235');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_235');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_239');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_239');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_243');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_243');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_5_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_5\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_5_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_5\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_49_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_49\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_49_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_49\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_49_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_49\_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_46_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_46\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_46_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_46\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_46_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_46\_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_48_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_48\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_48_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_48\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_48_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_48\_3');
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names = char(M_.param_names, 'iotap');
M_.param_names_tex = char(M_.param_names_tex, 'iotap');
M_.param_names = char(M_.param_names, 'iotaw');
M_.param_names_tex = char(M_.param_names_tex, 'iotaw');
M_.param_names = char(M_.param_names, 'gamma100');
M_.param_names_tex = char(M_.param_names_tex, 'gamma100');
M_.param_names = char(M_.param_names, 'h');
M_.param_names_tex = char(M_.param_names_tex, 'h');
M_.param_names = char(M_.param_names, 'lambdapss');
M_.param_names_tex = char(M_.param_names_tex, 'lambdapss');
M_.param_names = char(M_.param_names, 'lambdawss');
M_.param_names_tex = char(M_.param_names_tex, 'lambdawss');
M_.param_names = char(M_.param_names, 'Lss');
M_.param_names_tex = char(M_.param_names_tex, 'Lss');
M_.param_names = char(M_.param_names, 'pss100');
M_.param_names_tex = char(M_.param_names_tex, 'pss100');
M_.param_names = char(M_.param_names, 'Fbeta');
M_.param_names_tex = char(M_.param_names_tex, 'Fbeta');
M_.param_names = char(M_.param_names, 'gss');
M_.param_names_tex = char(M_.param_names_tex, 'gss');
M_.param_names = char(M_.param_names, 'niu');
M_.param_names_tex = char(M_.param_names_tex, 'niu');
M_.param_names = char(M_.param_names, 'xip');
M_.param_names_tex = char(M_.param_names_tex, 'xip');
M_.param_names = char(M_.param_names, 'xiw');
M_.param_names_tex = char(M_.param_names_tex, 'xiw');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, 'chi');
M_.param_names = char(M_.param_names, 'Sadj');
M_.param_names_tex = char(M_.param_names_tex, 'Sadj');
M_.param_names = char(M_.param_names, 'fp');
M_.param_names_tex = char(M_.param_names_tex, 'fp');
M_.param_names = char(M_.param_names, 'fy');
M_.param_names_tex = char(M_.param_names_tex, 'fy');
M_.param_names = char(M_.param_names, 'fdy');
M_.param_names_tex = char(M_.param_names_tex, 'fdy');
M_.param_names = char(M_.param_names, 'rhoR');
M_.param_names_tex = char(M_.param_names_tex, 'rhoR');
M_.param_names = char(M_.param_names, 'rhoz');
M_.param_names_tex = char(M_.param_names_tex, 'rhoz');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, 'rhog');
M_.param_names = char(M_.param_names, 'rhomiu');
M_.param_names_tex = char(M_.param_names_tex, 'rhomiu');
M_.param_names = char(M_.param_names, 'rholambdap');
M_.param_names_tex = char(M_.param_names_tex, 'rholambdap');
M_.param_names = char(M_.param_names, 'rholambdaw');
M_.param_names_tex = char(M_.param_names_tex, 'rholambdaw');
M_.param_names = char(M_.param_names, 'rhob');
M_.param_names_tex = char(M_.param_names_tex, 'rhob');
M_.param_names = char(M_.param_names, 'rhoARMAlambdap');
M_.param_names_tex = char(M_.param_names_tex, 'rhoARMAlambdap');
M_.param_names = char(M_.param_names, 'rhoARMAlambdaw');
M_.param_names_tex = char(M_.param_names_tex, 'rhoARMAlambdaw');
M_.param_names = char(M_.param_names, 'rhoupsilon');
M_.param_names_tex = char(M_.param_names_tex, 'rhoupsilon');
M_.param_names = char(M_.param_names, 'gammamiu100');
M_.param_names_tex = char(M_.param_names_tex, 'gammamiu100');
M_.param_names = char(M_.param_names, 'gammastar100');
M_.param_names_tex = char(M_.param_names_tex, 'gammastar100');
M_.exo_det_nbr = 0;
M_.exo_nbr = 9;
M_.endo_nbr = 75;
M_.param_nbr = 66;
M_.orig_endo_nbr = 52;
M_.aux_vars(1).endo_index = 53;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 54;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 55;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 56;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 57;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 58;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 59;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 60;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 61;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 62;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 6;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 63;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 6;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 64;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 51;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 65;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 51;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 66;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 51;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 67;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 50;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 68;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 50;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 69;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 50;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 70;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 47;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 71;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 47;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 72;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 47;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 73;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 49;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 74;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 49;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 75;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 49;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(9, 9);
M_.H = 0;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('US_JPT11_static');
erase_compiled_function('US_JPT11_dynamic');
M_.lead_lag_incidence = [
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 1 42 113;
 2 43 114;
 0 44 0;
 0 45 115;
 3 46 116;
 0 47 0;
 0 48 0;
 4 49 117;
 5 50 0;
 0 51 0;
 0 52 0;
 6 53 0;
 7 54 0;
 8 55 0;
 9 56 0;
 10 57 0;
 11 58 0;
 0 59 0;
 12 60 0;
 13 61 0;
 0 62 0;
 0 63 0;
 0 64 0;
 0 65 0;
 0 66 0;
 0 67 0;
 0 68 118;
 14 69 119;
 0 70 0;
 0 71 0;
 15 72 120;
 16 73 0;
 0 74 0;
 0 75 0;
 0 76 121;
 0 77 122;
 17 78 0;
 18 79 0;
 0 80 0;
 0 81 0;
 19 82 0;
 0 83 0;
 20 84 0;
 0 85 0;
 21 86 123;
 22 87 124;
 23 88 125;
 0 89 0;
 0 90 126;
 0 91 127;
 0 92 128;
 0 93 129;
 0 94 130;
 0 95 131;
 0 96 132;
 0 97 133;
 0 98 134;
 24 99 0;
 25 100 0;
 26 101 0;
 27 102 0;
 28 103 0;
 29 104 0;
 30 105 0;
 31 106 0;
 32 107 0;
 33 108 0;
 34 109 0;
 35 110 0;
 36 111 0;
 37 112 0;]';
M_.nstatic = 25;
M_.nfwrd   = 13;
M_.npred   = 28;
M_.nboth   = 9;
M_.equations_tags = {
};
M_.exo_names_orig_ord = [1:9];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(75, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(9, 1);
M_.params = NaN(66, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 279;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
M_.params( 35 ) = 0.167;
alpha = M_.params( 35 );
M_.params( 36 ) = 0.025;
delta = M_.params( 36 );
M_.params( 37 ) = 0.131;
iotap = M_.params( 37 );
M_.params( 38 ) = 0.092;
iotaw = M_.params( 38 );
M_.params( 66 ) = 0.3;
gammastar100 = M_.params( 66 );
M_.params( 65 ) = 0.596;
gammamiu100 = M_.params( 65 );
M_.params( 39 ) = M_.params(66)-M_.params(35)/(1-M_.params(35))*M_.params(65);
gamma100 = M_.params( 39 );
M_.params( 40 ) = 0.858;
h = M_.params( 40 );
M_.params( 41 ) = 0.18;
lambdapss = M_.params( 41 );
M_.params( 42 ) = 0.144;
lambdawss = M_.params( 42 );
M_.params( 43 ) = 1.214096282956233;
Lss = M_.params( 43 );
M_.params( 44 ) = 1.00701;
pss100 = M_.params( 44 );
M_.params( 45 ) = 0.149;
Fbeta = M_.params( 45 );
M_.params( 46 ) = 1.282051282051282;
gss = M_.params( 46 );
M_.params( 47 ) = 4.492;
niu = M_.params( 47 );
M_.params( 48 ) = 0.787;
xip = M_.params( 48 );
M_.params( 49 ) = 0.777;
xiw = M_.params( 49 );
M_.params( 50 ) = 5.672;
chi = M_.params( 50 );
M_.params( 51 ) = 3.142;
Sadj = M_.params( 51 );
M_.params( 52 ) = 1.688;
fp = M_.params( 52 );
M_.params( 53 ) = 0.046;
fy = M_.params( 53 );
M_.params( 54 ) = 0.211;
fdy = M_.params( 54 );
M_.params( 55 ) = 0.86;
rhoR = M_.params( 55 );
M_.params( 56 ) = 0.287;
rhoz = M_.params( 56 );
M_.params( 57 ) = 0.989;
rhog = M_.params( 57 );
M_.params( 58 ) = 0.163;
rhomiu = M_.params( 58 );
M_.params( 59 ) = 0.975;
rholambdap = M_.params( 59 );
M_.params( 60 ) = 0.962;
rholambdaw = M_.params( 60 );
M_.params( 61 ) = 0.614;
rhob = M_.params( 61 );
M_.params( 62 ) = 0.984;
rhoARMAlambdap = M_.params( 62 );
M_.params( 63 ) = 0.827;
rhoARMAlambdaw = M_.params( 63 );
M_.params( 64 ) = 0.813;
rhoupsilon = M_.params( 64 );
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
M_.Sigma_e(2, 2) = 0.889249;
M_.Sigma_e(3, 3) = 0.395641;
M_.Sigma_e(4, 4) = 0.049284;
M_.Sigma_e(5, 5) = 0.099856;
M_.Sigma_e(6, 6) = 0.001156;
M_.Sigma_e(7, 7) = 33.477796;
M_.Sigma_e(9, 9) = 0.136161;
M_.sigma_e_is_diagonal = 1;
save('US_JPT11_results.mat', 'oo_', 'M_', 'options_');


disp(['Total computing time : ' dynsec2hms(toc) ]);
diary off
