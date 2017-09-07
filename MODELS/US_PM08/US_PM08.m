%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'US_PM08';
M_.dynare_version = 'master-2017-05-12-ae50f25';
oo_.dynare_version = 'master-2017-05-12-ae50f25';
options_.dynare_version = 'master-2017-05-12-ae50f25';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('US_PM08.log');
M_.exo_names = 'RES_RR_US_BAR';
M_.exo_names_tex = 'RES\_RR\_US\_BAR';
M_.exo_names_long = 'RES_RR_US_BAR';
M_.exo_names = char(M_.exo_names, 'RES_UNR_US_GAP');
M_.exo_names_tex = char(M_.exo_names_tex, 'RES\_UNR\_US\_GAP');
M_.exo_names_long = char(M_.exo_names_long, 'RES_UNR_US_GAP');
M_.exo_names = char(M_.exo_names, 'RES_Y_US');
M_.exo_names_tex = char(M_.exo_names_tex, 'RES\_Y\_US');
M_.exo_names_long = char(M_.exo_names_long, 'RES_Y_US');
M_.exo_names = char(M_.exo_names, 'RES_PIE_US');
M_.exo_names_tex = char(M_.exo_names_tex, 'RES\_PIE\_US');
M_.exo_names_long = char(M_.exo_names_long, 'RES_PIE_US');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'RR_USh';
M_.endo_names_tex = 'RR\_USh';
M_.endo_names_long = 'RR_USh';
M_.endo_names = char(M_.endo_names, 'RR_US_BARh');
M_.endo_names_tex = char(M_.endo_names_tex, 'RR\_US\_BARh');
M_.endo_names_long = char(M_.endo_names_long, 'RR_US_BARh');
M_.endo_names = char(M_.endo_names, 'UNR_US_GAP');
M_.endo_names_tex = char(M_.endo_names_tex, 'UNR\_US\_GAP');
M_.endo_names_long = char(M_.endo_names_long, 'UNR_US_GAP');
M_.endo_names = char(M_.endo_names, 'PIE_USh');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIE\_USh');
M_.endo_names_long = char(M_.endo_names_long, 'PIE_USh');
M_.endo_names = char(M_.endo_names, 'PIE_US4h');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIE\_US4h');
M_.endo_names_long = char(M_.endo_names_long, 'PIE_US4h');
M_.endo_names = char(M_.endo_names, 'Y_US');
M_.endo_names_tex = char(M_.endo_names_tex, 'Y\_US');
M_.endo_names_long = char(M_.endo_names_long, 'Y_US');
M_.endo_names = char(M_.endo_names, 'RS_USh');
M_.endo_names_tex = char(M_.endo_names_tex, 'RS\_USh');
M_.endo_names_long = char(M_.endo_names_long, 'RS_USh');
M_.endo_names = char(M_.endo_names, 'E4_PIE_US4h');
M_.endo_names_tex = char(M_.endo_names_tex, 'E4\_PIE\_US4h');
M_.endo_names_long = char(M_.endo_names_long, 'E4_PIE_US4h');
M_.endo_names = char(M_.endo_names, 'E1_Y_USh');
M_.endo_names_tex = char(M_.endo_names_tex, 'E1\_Y\_USh');
M_.endo_names_long = char(M_.endo_names_long, 'E1_Y_USh');
M_.endo_names = char(M_.endo_names, 'E1_PIE_USh');
M_.endo_names_tex = char(M_.endo_names_tex, 'E1\_PIE\_USh');
M_.endo_names_long = char(M_.endo_names_long, 'E1_PIE_USh');
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
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_66');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_66');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_66');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_70');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_70');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_70');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_74');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_74');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_74');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_101');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_101');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_101');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_105');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_105');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_105');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_109');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_109');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_109');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_136');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_136');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_136');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_140');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_140');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_140');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_144');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_144');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_144');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_276');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_276');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_276');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_280');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_280');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_280');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_179');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_179');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_179');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_2');
M_.endo_partitions = struct();
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
M_.param_names = char(M_.param_names, 'rho_us');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_us');
M_.param_names_long = char(M_.param_names_long, 'rho_us');
M_.param_names = char(M_.param_names, 'rr_us_bar_ss');
M_.param_names_tex = char(M_.param_names_tex, 'rr\_us\_bar\_ss');
M_.param_names_long = char(M_.param_names_long, 'rr_us_bar_ss');
M_.param_names = char(M_.param_names, 'alpha_us1');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_us1');
M_.param_names_long = char(M_.param_names_long, 'alpha_us1');
M_.param_names = char(M_.param_names, 'alpha_us2');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_us2');
M_.param_names_long = char(M_.param_names_long, 'alpha_us2');
M_.param_names = char(M_.param_names, 'tau_us');
M_.param_names_tex = char(M_.param_names_tex, 'tau\_us');
M_.param_names_long = char(M_.param_names_long, 'tau_us');
M_.param_names = char(M_.param_names, 'growth_us_ss');
M_.param_names_tex = char(M_.param_names_tex, 'growth\_us\_ss');
M_.param_names_long = char(M_.param_names_long, 'growth_us_ss');
M_.param_names = char(M_.param_names, 'beta_us1');
M_.param_names_tex = char(M_.param_names_tex, 'beta\_us1');
M_.param_names_long = char(M_.param_names_long, 'beta_us1');
M_.param_names = char(M_.param_names, 'beta_us2');
M_.param_names_tex = char(M_.param_names_tex, 'beta\_us2');
M_.param_names_long = char(M_.param_names_long, 'beta_us2');
M_.param_names = char(M_.param_names, 'beta_us3');
M_.param_names_tex = char(M_.param_names_tex, 'beta\_us3');
M_.param_names_long = char(M_.param_names_long, 'beta_us3');
M_.param_names = char(M_.param_names, 'lambda_us1');
M_.param_names_tex = char(M_.param_names_tex, 'lambda\_us1');
M_.param_names_long = char(M_.param_names_long, 'lambda_us1');
M_.param_names = char(M_.param_names, 'lambda_us2');
M_.param_names_tex = char(M_.param_names_tex, 'lambda\_us2');
M_.param_names_long = char(M_.param_names_long, 'lambda_us2');
M_.param_names = char(M_.param_names, 'gamma_us1');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_us1');
M_.param_names_long = char(M_.param_names_long, 'gamma_us1');
M_.param_names = char(M_.param_names, 'gamma_us2');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_us2');
M_.param_names_long = char(M_.param_names_long, 'gamma_us2');
M_.param_names = char(M_.param_names, 'gamma_us4');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_us4');
M_.param_names_long = char(M_.param_names_long, 'gamma_us4');
M_.param_names = char(M_.param_names, 'pietar_us_ss');
M_.param_names_tex = char(M_.param_names_tex, 'pietar\_us\_ss');
M_.param_names_long = char(M_.param_names_long, 'pietar_us_ss');
M_.param_names = char(M_.param_names, 'alpha_us3');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_us3');
M_.param_names_long = char(M_.param_names_long, 'alpha_us3');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 41;
M_.param_nbr = 49;
M_.orig_endo_nbr = 15;
M_.aux_vars(1).endo_index = 16;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 17;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 18;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 19;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 20;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 21;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 22;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 23;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 24;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 25;
M_.aux_vars(10).type = 0;
M_.aux_vars(11).endo_index = 26;
M_.aux_vars(11).type = 0;
M_.aux_vars(12).endo_index = 27;
M_.aux_vars(12).type = 0;
M_.aux_vars(13).endo_index = 28;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 15;
M_.aux_vars(13).orig_lead_lag = -1;
M_.aux_vars(14).endo_index = 29;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 15;
M_.aux_vars(14).orig_lead_lag = -2;
M_.aux_vars(15).endo_index = 30;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 15;
M_.aux_vars(15).orig_lead_lag = -3;
M_.aux_vars(16).endo_index = 31;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 14;
M_.aux_vars(16).orig_lead_lag = -1;
M_.aux_vars(17).endo_index = 32;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 14;
M_.aux_vars(17).orig_lead_lag = -2;
M_.aux_vars(18).endo_index = 33;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 14;
M_.aux_vars(18).orig_lead_lag = -3;
M_.aux_vars(19).endo_index = 34;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 11;
M_.aux_vars(19).orig_lead_lag = -1;
M_.aux_vars(20).endo_index = 35;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 11;
M_.aux_vars(20).orig_lead_lag = -2;
M_.aux_vars(21).endo_index = 36;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 11;
M_.aux_vars(21).orig_lead_lag = -3;
M_.aux_vars(22).endo_index = 37;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 13;
M_.aux_vars(22).orig_lead_lag = -1;
M_.aux_vars(23).endo_index = 38;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 13;
M_.aux_vars(23).orig_lead_lag = -2;
M_.aux_vars(24).endo_index = 39;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 13;
M_.aux_vars(24).orig_lead_lag = -3;
M_.aux_vars(25).endo_index = 40;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 4;
M_.aux_vars(25).orig_lead_lag = -1;
M_.aux_vars(26).endo_index = 41;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 4;
M_.aux_vars(26).orig_lead_lag = -2;
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('US_PM08_static');
erase_compiled_function('US_PM08_dynamic');
M_.orig_eq_nbr = 15;
M_.eq_nbr = 41;
M_.ramsey_eq_nbr = 0;
M_.lead_lag_incidence = [
 1 25 0;
 2 26 0;
 3 27 0;
 4 28 66;
 5 29 67;
 6 30 68;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 7 35 0;
 0 36 0;
 8 37 69;
 9 38 70;
 10 39 71;
 0 40 72;
 0 41 73;
 0 42 74;
 0 43 75;
 0 44 76;
 0 45 77;
 0 46 78;
 0 47 79;
 0 48 80;
 0 49 81;
 0 50 82;
 0 51 83;
 11 52 0;
 12 53 0;
 13 54 0;
 14 55 0;
 15 56 0;
 16 57 0;
 17 58 0;
 18 59 0;
 19 60 0;
 20 61 0;
 21 62 0;
 22 63 0;
 23 64 0;
 24 65 0;]';
M_.nstatic = 5;
M_.nfwrd   = 12;
M_.npred   = 18;
M_.nboth   = 6;
M_.nsfwrd   = 18;
M_.nspred   = 24;
M_.ndynamic   = 36;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(41, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(49, 1);
M_.NNZDerivatives = [127; 0; -1];
M_.params( 36 ) = 0.7453;
alpha_us1 = M_.params( 36 );
M_.params( 37 ) = 0.1711;
alpha_us2 = M_.params( 37 );
M_.params( 49 ) = 0.3339;
alpha_us3 = M_.params( 49 );
M_.params( 34 ) = 0.9239;
rho_us = M_.params( 34 );
M_.params( 35 ) = 1.8221;
rr_us_bar_ss = M_.params( 35 );
M_.params( 38 ) = 0.0768;
tau_us = M_.params( 38 );
M_.params( 39 ) = 2.6016;
growth_us_ss = M_.params( 39 );
M_.params( 40 ) = 0.8523;
beta_us1 = M_.params( 40 );
M_.params( 41 ) = 0.1674;
beta_us2 = M_.params( 41 );
M_.params( 42 ) = 0.1270;
beta_us3 = M_.params( 42 );
M_.params( 43 ) = 0.7272;
lambda_us1 = M_.params( 43 );
M_.params( 44 ) = 0.1937;
lambda_us2 = M_.params( 44 );
M_.params( 45 ) = 0.7087;
gamma_us1 = M_.params( 45 );
M_.params( 46 ) = 1.2679;
gamma_us2 = M_.params( 46 );
M_.params( 47 ) = 0.2192;
gamma_us4 = M_.params( 47 );
M_.params( 48 ) = 2.5;
pietar_us_ss = M_.params( 48 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);    
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0934)^2;
M_.Sigma_e(2, 2) = (0.0943)^2;
M_.Sigma_e(3, 3) = (0.3567)^2;
M_.Sigma_e(4, 4) = (1.3598)^2;
save('US_PM08_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('US_PM08_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('US_PM08_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('US_PM08_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('US_PM08_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('US_PM08_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('US_PM08_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
