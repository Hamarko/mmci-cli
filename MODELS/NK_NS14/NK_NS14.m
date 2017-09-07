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
M_.fname = 'NK_NS14';
%
% Some global variables initialization
%
global_initialization;
diary off;
logname_ = 'NK_NS14.log';
if exist(logname_, 'file')
    delete(logname_)
end
diary(logname_)
M_.exo_names = 'eg';
M_.exo_names_tex = 'eg';
M_.exo_names = char(M_.exo_names, 'egf');
M_.exo_names_tex = char(M_.exo_names_tex, 'egf');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.endo_names = 'c';
M_.endo_names_tex = 'c';
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names = char(M_.endo_names, 'pif');
M_.endo_names_tex = char(M_.endo_names_tex, 'pif');
M_.endo_names = char(M_.endo_names, 'piH');
M_.endo_names_tex = char(M_.endo_names_tex, 'piH');
M_.endo_names = char(M_.endo_names, 'piF');
M_.endo_names_tex = char(M_.endo_names_tex, 'piF');
M_.endo_names = char(M_.endo_names, 'l');
M_.endo_names_tex = char(M_.endo_names_tex, 'l');
M_.endo_names = char(M_.endo_names, 'lf');
M_.endo_names_tex = char(M_.endo_names_tex, 'lf');
M_.endo_names = char(M_.endo_names, 'pH');
M_.endo_names_tex = char(M_.endo_names_tex, 'pH');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, 'p');
M_.endo_names = char(M_.endo_names, 'pf');
M_.endo_names_tex = char(M_.endo_names_tex, 'pf');
M_.endo_names = char(M_.endo_names, 'sH');
M_.endo_names_tex = char(M_.endo_names_tex, 'sH');
M_.endo_names = char(M_.endo_names, 'sF');
M_.endo_names_tex = char(M_.endo_names_tex, 'sF');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names = char(M_.endo_names, 'yf');
M_.endo_names_tex = char(M_.endo_names_tex, 'yf');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names = char(M_.endo_names, 'gf');
M_.endo_names_tex = char(M_.endo_names_tex, 'gf');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names = char(M_.endo_names, 'wf');
M_.endo_names_tex = char(M_.endo_names_tex, 'wf');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names = char(M_.endo_names, 'if');
M_.endo_names_tex = char(M_.endo_names_tex, 'if');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names = char(M_.endo_names, 'kf');
M_.endo_names_tex = char(M_.endo_names_tex, 'kf');
M_.endo_names = char(M_.endo_names, 'ny');
M_.endo_names_tex = char(M_.endo_names_tex, 'ny');
M_.endo_names = char(M_.endo_names, 'nyf');
M_.endo_names_tex = char(M_.endo_names_tex, 'nyf');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names = char(M_.endo_names, 'c_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'c\_n');
M_.endo_names = char(M_.endo_names, 'cf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf\_n');
M_.endo_names = char(M_.endo_names, 'r_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'r\_n');
M_.endo_names = char(M_.endo_names, 'l_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'l\_n');
M_.endo_names = char(M_.endo_names, 'lf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'lf\_n');
M_.endo_names = char(M_.endo_names, 'sH_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'sH\_n');
M_.endo_names = char(M_.endo_names, 'sF_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'sF\_n');
M_.endo_names = char(M_.endo_names, 'y_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'y\_n');
M_.endo_names = char(M_.endo_names, 'yf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'yf\_n');
M_.endo_names = char(M_.endo_names, 'g_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'g\_n');
M_.endo_names = char(M_.endo_names, 'gf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'gf\_n');
M_.endo_names = char(M_.endo_names, 'w_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'w\_n');
M_.endo_names = char(M_.endo_names, 'wf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'wf\_n');
M_.endo_names = char(M_.endo_names, 'i_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_n');
M_.endo_names = char(M_.endo_names, 'if_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'if\_n');
M_.endo_names = char(M_.endo_names, 'k_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'k\_n');
M_.endo_names = char(M_.endo_names, 'kf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'kf\_n');
M_.endo_names = char(M_.endo_names, 'ny_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'ny\_n');
M_.endo_names = char(M_.endo_names, 'nyf_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'nyf\_n');
M_.endo_names = char(M_.endo_names, 'eg_agg');
M_.endo_names_tex = char(M_.endo_names_tex, 'eg\_agg');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_113');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_113');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_117');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_117');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_121');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_121');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_148');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_148');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_152');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_152');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_156');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_156');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_183');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_183');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_187');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_187');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_191');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_191');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_4_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_4\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_4_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_4\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_52_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_52\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_52_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_52\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_52_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_52\_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_47_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_47\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_47_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_47\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_47_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_47\_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_49_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_49\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_49_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_49\_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_49_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_49\_3');
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
M_.param_names = char(M_.param_names, 'sigma_c');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_c');
M_.param_names = char(M_.param_names, 'sigma_l');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_l');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names = char(M_.param_names, 'zeta');
M_.param_names_tex = char(M_.param_names_tex, 'zeta');
M_.param_names = char(M_.param_names, 'phiH');
M_.param_names_tex = char(M_.param_names_tex, 'phiH');
M_.param_names = char(M_.param_names, 'phiF');
M_.param_names_tex = char(M_.param_names_tex, 'phiF');
M_.param_names = char(M_.param_names, 'phiHstar');
M_.param_names_tex = char(M_.param_names_tex, 'phiHstar');
M_.param_names = char(M_.param_names, 'phiFstar');
M_.param_names_tex = char(M_.param_names_tex, 'phiFstar');
M_.param_names = char(M_.param_names, 'Cbar');
M_.param_names_tex = char(M_.param_names_tex, 'Cbar');
M_.param_names = char(M_.param_names, 'Ibar');
M_.param_names_tex = char(M_.param_names_tex, 'Ibar');
M_.param_names = char(M_.param_names, 'nn');
M_.param_names_tex = char(M_.param_names_tex, 'nn');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names = char(M_.param_names, 'rhoii');
M_.param_names_tex = char(M_.param_names_tex, 'rhoii');
M_.param_names = char(M_.param_names, 'phiPi');
M_.param_names_tex = char(M_.param_names_tex, 'phiPi');
M_.param_names = char(M_.param_names, 'phiY');
M_.param_names_tex = char(M_.param_names_tex, 'phiY');
M_.param_names = char(M_.param_names, 'phiG');
M_.param_names_tex = char(M_.param_names_tex, 'phiG');
M_.param_names = char(M_.param_names, 'rhoG');
M_.param_names_tex = char(M_.param_names_tex, 'rhoG');
M_.param_names = char(M_.param_names, 'aa');
M_.param_names_tex = char(M_.param_names_tex, 'aa');
M_.param_names = char(M_.param_names, 'nu');
M_.param_names_tex = char(M_.param_names_tex, 'nu');
M_.param_names = char(M_.param_names, 'omegaBar');
M_.param_names_tex = char(M_.param_names_tex, 'omegaBar');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names = char(M_.param_names, 'eps_phi');
M_.param_names_tex = char(M_.param_names_tex, 'eps\_phi');
M_.param_names = char(M_.param_names, 'rho_y');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_y');
M_.param_names = char(M_.param_names, 'rho_k');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_k');
M_.param_names = char(M_.param_names, 'kappa_n');
M_.param_names_tex = char(M_.param_names_tex, 'kappa\_n');
M_.param_names = char(M_.param_names, 'zeta_n');
M_.param_names_tex = char(M_.param_names_tex, 'zeta\_n');
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 78;
M_.param_nbr = 61;
M_.orig_endo_nbr = 53;
M_.aux_vars(1).endo_index = 54;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 55;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 56;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 57;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 58;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 59;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 60;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 61;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 62;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 63;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 4;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 64;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 4;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 65;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 5;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 66;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 5;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 67;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 51;
M_.aux_vars(14).orig_lead_lag = -1;
M_.aux_vars(15).endo_index = 68;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 51;
M_.aux_vars(15).orig_lead_lag = -2;
M_.aux_vars(16).endo_index = 69;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 51;
M_.aux_vars(16).orig_lead_lag = -3;
M_.aux_vars(17).endo_index = 70;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 53;
M_.aux_vars(17).orig_lead_lag = -1;
M_.aux_vars(18).endo_index = 71;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 53;
M_.aux_vars(18).orig_lead_lag = -2;
M_.aux_vars(19).endo_index = 72;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 53;
M_.aux_vars(19).orig_lead_lag = -3;
M_.aux_vars(20).endo_index = 73;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 48;
M_.aux_vars(20).orig_lead_lag = -1;
M_.aux_vars(21).endo_index = 74;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 48;
M_.aux_vars(21).orig_lead_lag = -2;
M_.aux_vars(22).endo_index = 75;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 48;
M_.aux_vars(22).orig_lead_lag = -3;
M_.aux_vars(23).endo_index = 76;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 50;
M_.aux_vars(23).orig_lead_lag = -1;
M_.aux_vars(24).endo_index = 77;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 50;
M_.aux_vars(24).orig_lead_lag = -2;
M_.aux_vars(25).endo_index = 78;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 50;
M_.aux_vars(25).orig_lead_lag = -3;
M_.Sigma_e = zeros(4, 4);
M_.H = 0;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('NK_NS14_static');
erase_compiled_function('NK_NS14_dynamic');
M_.lead_lag_incidence = [
 0 34 112;
 0 35 113;
 0 36 0;
 1 37 114;
 2 38 0;
 0 39 115;
 0 40 116;
 0 41 117;
 0 42 118;
 3 43 0;
 4 44 0;
 5 45 0;
 0 46 0;
 0 47 0;
 0 48 119;
 0 49 120;
 6 50 0;
 7 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 0;
 8 56 121;
 9 57 122;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 123;
 0 62 124;
 0 63 0;
 0 64 125;
 0 65 126;
 0 66 0;
 0 67 0;
 0 68 127;
 0 69 128;
 10 70 0;
 11 71 0;
 0 72 0;
 0 73 0;
 0 74 0;
 0 75 0;
 12 76 129;
 13 77 130;
 0 78 0;
 0 79 0;
 0 80 0;
 14 81 0;
 0 82 0;
 15 83 131;
 16 84 132;
 0 85 0;
 17 86 133;
 0 87 134;
 0 88 135;
 0 89 136;
 0 90 137;
 0 91 138;
 0 92 139;
 0 93 140;
 0 94 141;
 0 95 142;
 18 96 0;
 19 97 0;
 20 98 0;
 21 99 0;
 22 100 0;
 23 101 0;
 24 102 0;
 25 103 0;
 26 104 0;
 27 105 0;
 28 106 0;
 29 107 0;
 30 108 0;
 31 109 0;
 32 110 0;
 33 111 0;]';
M_.nstatic = 22;
M_.nfwrd   = 23;
M_.npred   = 25;
M_.nboth   = 8;
M_.equations_tags = {
};
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(78, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(61, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 288;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
sigma   = 1;                
alpha   = 0.75;             
M_.params( 37 ) = 0.99;
beta = M_.params( 37 );
M_.params( 54 ) = 1;
nu = M_.params( 54 );
M_.params( 53 ) = 0.67;
aa = M_.params( 53 );
M_.params( 47 ) = 2;
eta = M_.params( 47 );
theta   = 7;                
M_.params( 56 ) = 0.012;
delta = M_.params( 56 );
M_.params( 57 ) = 3;
eps_phi = M_.params( 57 );
M_.params( 46 ) = 0.1;
nn = M_.params( 46 );
M_.params( 40 ) = 0.69;
phiH = M_.params( 40 );
M_.params( 41 ) = 1-M_.params(40);
phiF = M_.params( 41 );
M_.params( 42 ) = M_.params(41)*M_.params(46)/(1-M_.params(46));
phiHstar = M_.params( 42 );
M_.params( 43 ) = 1-M_.params(42);
phiFstar = M_.params( 43 );
M_.params( 49 ) = 1.5;
phiPi = M_.params( 49 );
M_.params( 50 ) = 0.5;
phiY = M_.params( 50 );
M_.params( 48 ) = 0.8;
rhoii = M_.params( 48 );
M_.params( 51 ) = 0.0;
phiG = M_.params( 51 );
phi_c    = 1;               
phi_i    = 0;               
M_.params( 52 ) = 0.933;
rhoG = M_.params( 52 );
corrG    = 0.999;           
KoverL   = ((1-aa)*(beta/(1-beta*(1-delta)))*(theta-1)/theta)^(1/aa);
M_.params( 45 ) = M_.params(56)*KoverL^M_.params(53);
Ibar = M_.params( 45 );
Gbar     = 0.2;      
M_.params( 44 ) = 1-Gbar-M_.params(45);
Cbar = M_.params( 44 );
M_.params( 35 ) = sigma^(-1)*(1-M_.params(53)*(theta-1)/theta*M_.params(44)^(-1)*(1+1/M_.params(54))^(-1))^(-1);
sigma_c = M_.params( 35 );
M_.params( 36 ) = (M_.params(53)*(theta-1)/theta*M_.params(44)^(-1)*M_.params(35)^(-1))^(-1);
sigma_l = M_.params( 36 );
M_.params( 38 ) = (1-alpha)*(1-alpha*M_.params(37))/alpha;
kappa = M_.params( 38 );
M_.params( 55 ) = (1+M_.params(54)^(-1)-M_.params(53))/M_.params(53);
omegaBar = M_.params( 55 );
M_.params( 58 ) = 1+M_.params(55);
rho_y = M_.params( 58 );
M_.params( 59 ) = M_.params(58)-M_.params(54)^(-1);
rho_k = M_.params( 59 );
Xi       = (1-beta*(1-delta))*rho_y*theta*eps_phi^(-1);
AA = 1+beta+(1-beta*(1-delta))*rho_k*eps_phi^(-1);
BB = 2*(1+omegaBar*theta)*alpha*beta+alpha^2*beta*(omegaBar-nu^(-1))*Xi;
RR0 = beta*(1+omegaBar*theta);
RR1 = -beta*BB-(1+omegaBar*theta)*AA;
RR2 = beta*(1+omegaBar*theta)+beta*AA*BB+alpha*beta^2*(1+omegaBar*theta);
RR3 = -beta*BB-alpha*beta^2*AA*(1+omegaBar*theta);
RR4 = alpha*beta^2*(1+omegaBar*theta);
QQ = [RR4 RR3 RR2 RR1 RR0];
lambda = roots(QQ);
realLambda = (lambda == real(lambda));
lessOneLambda = (abs(lambda) < 1);
whichLambda = realLambda.*lessOneLambda;
lambda = whichLambda'*lambda;
tauBar = alpha*Xi*lambda/(1-alpha*beta*lambda);
M_.params( 39 ) = (1+theta*M_.params(55)-M_.params(37)*alpha*(M_.params(55)-M_.params(54)^(-1))*tauBar/(1-alpha*M_.params(37)*lambda))^(-1);
zeta = M_.params( 39 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);                                                            
M_.params( 32 ) = 1;
std_r_ = M_.params( 32 );
M_.params( 34 ) = 1;
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(4, 4) = 1;
M_.sigma_e_is_diagonal = 1;
save('NK_NS14_results.mat', 'oo_', 'M_', 'options_');


disp(['Total computing time : ' dynsec2hms(toc) ]);
diary off
