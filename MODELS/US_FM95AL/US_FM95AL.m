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
M_.fname = 'US_FM95AL';
M_.dynare_version = 'master-2017-05-12-ae50f25';
oo_.dynare_version = 'master-2017-05-12-ae50f25';
options_.dynare_version = 'master-2017-05-12-ae50f25';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('US_FM95AL.log');
M_.exo_names = 'epsilon_p';
M_.exo_names_tex = 'epsilon\_p';
M_.exo_names_long = 'epsilon_p';
M_.exo_names = char(M_.exo_names, 'epsilon_y');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsilon\_y');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_y');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'p';
M_.endo_names_tex = 'p';
M_.endo_names_long = 'p';
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.endo_names = char(M_.endo_names, 'ytilde');
M_.endo_names_tex = char(M_.endo_names_tex, 'ytilde');
M_.endo_names_long = char(M_.endo_names_long, 'ytilde');
M_.endo_names = char(M_.endo_names, 'ypsilon');
M_.endo_names_tex = char(M_.endo_names_tex, 'ypsilon');
M_.endo_names_long = char(M_.endo_names_long, 'ypsilon');
M_.endo_names = char(M_.endo_names, 'f');
M_.endo_names_tex = char(M_.endo_names_tex, 'f');
M_.endo_names_long = char(M_.endo_names_long, 'f');
M_.endo_names = char(M_.endo_names, 'infl');
M_.endo_names_tex = char(M_.endo_names_tex, 'infl');
M_.endo_names_long = char(M_.endo_names_long, 'infl');
M_.endo_names = char(M_.endo_names, 'rho');
M_.endo_names_tex = char(M_.endo_names_tex, 'rho');
M_.endo_names_long = char(M_.endo_names_long, 'rho');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'inflationql');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationql');
M_.endo_names_long = char(M_.endo_names_long, 'inflationql');
M_.endo_names = char(M_.endo_names, 'inflationql2');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationql2');
M_.endo_names_long = char(M_.endo_names_long, 'inflationql2');
M_.endo_names = char(M_.endo_names, 'inflationqls');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationqls');
M_.endo_names_long = char(M_.endo_names_long, 'inflationqls');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'ytildef');
M_.endo_names_tex = char(M_.endo_names_tex, 'ytildef');
M_.endo_names_long = char(M_.endo_names_long, 'ytildef');
M_.endo_names = char(M_.endo_names, 'ytildeff');
M_.endo_names_tex = char(M_.endo_names_tex, 'ytildeff');
M_.endo_names_long = char(M_.endo_names_long, 'ytildeff');
M_.endo_names = char(M_.endo_names, 'ytildel');
M_.endo_names_tex = char(M_.endo_names_tex, 'ytildel');
M_.endo_names_long = char(M_.endo_names_long, 'ytildel');
M_.endo_names = char(M_.endo_names, 'ypsilonf');
M_.endo_names_tex = char(M_.endo_names_tex, 'ypsilonf');
M_.endo_names_long = char(M_.endo_names_long, 'ypsilonf');
M_.endo_names = char(M_.endo_names, 'ypsilonff');
M_.endo_names_tex = char(M_.endo_names_tex, 'ypsilonff');
M_.endo_names_long = char(M_.endo_names_long, 'ypsilonff');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'zl');
M_.endo_names_tex = char(M_.endo_names_tex, 'zl');
M_.endo_names_long = char(M_.endo_names_long, 'zl');
M_.endo_names = char(M_.endo_names, 'zll');
M_.endo_names_tex = char(M_.endo_names_tex, 'zll');
M_.endo_names_long = char(M_.endo_names_long, 'zll');
M_.endo_names = char(M_.endo_names, 'xl');
M_.endo_names_tex = char(M_.endo_names_tex, 'xl');
M_.endo_names_long = char(M_.endo_names_long, 'xl');
M_.endo_names = char(M_.endo_names, 'xll');
M_.endo_names_tex = char(M_.endo_names_tex, 'xll');
M_.endo_names_long = char(M_.endo_names_long, 'xll');
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
M_.param_names = char(M_.param_names, 'D');
M_.param_names_tex = char(M_.param_names_tex, 'D');
M_.param_names_long = char(M_.param_names_long, 'D');
M_.param_names = char(M_.param_names, 'a0');
M_.param_names_tex = char(M_.param_names_tex, 'a0');
M_.param_names_long = char(M_.param_names_long, 'a0');
M_.param_names = char(M_.param_names, 'a1');
M_.param_names_tex = char(M_.param_names_tex, 'a1');
M_.param_names_long = char(M_.param_names_long, 'a1');
M_.param_names = char(M_.param_names, 'a2');
M_.param_names_tex = char(M_.param_names_tex, 'a2');
M_.param_names_long = char(M_.param_names_long, 'a2');
M_.param_names = char(M_.param_names, 'arho');
M_.param_names_tex = char(M_.param_names_tex, 'arho');
M_.param_names_long = char(M_.param_names_long, 'arho');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, 'gamma');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 25;
M_.param_nbr = 45;
M_.orig_endo_nbr = 25;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('US_FM95AL_static');
erase_compiled_function('US_FM95AL_dynamic');
M_.orig_eq_nbr = 25;
M_.eq_nbr = 25;
M_.ramsey_eq_nbr = 0;
M_.lead_lag_incidence = [
 1 16 0;
 2 17 0;
 3 18 41;
 0 19 42;
 0 20 0;
 0 21 43;
 4 22 44;
 5 23 0;
 0 24 0;
 6 25 45;
 7 26 0;
 8 27 0;
 0 28 0;
 9 29 0;
 0 30 0;
 0 31 46;
 0 32 47;
 10 33 0;
 0 34 48;
 0 35 49;
 11 36 0;
 12 37 0;
 13 38 0;
 14 39 0;
 15 40 0;]';
M_.nstatic = 4;
M_.nfwrd   = 6;
M_.npred   = 12;
M_.nboth   = 3;
M_.nsfwrd   = 9;
M_.nspred   = 15;
M_.ndynamic   = 21;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(25, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(45, 1);
M_.NNZDerivatives = [83; 0; -1];
M_.params( 35 ) = 0.113;
s = M_.params( 35 );
M_.params( 45 ) = 0.002;
gamma = M_.params( 45 );
M_.params( 36 ) = 0.25+1.5*M_.params(35);
f0 = M_.params( 36 );
M_.params( 37 ) = 0.25+M_.params(35)*0.5;
f1 = M_.params( 37 );
M_.params( 38 ) = 0.25+M_.params(35)*(-0.5);
f2 = M_.params( 38 );
M_.params( 39 ) = 0.25+M_.params(35)*(-1.5);
f3 = M_.params( 39 );
M_.params( 40 ) = 40;
D = M_.params( 40 );
M_.params( 41 ) = 0.012;
a0 = M_.params( 41 );
M_.params( 42 ) = 1.447;
a1 = M_.params( 42 );
M_.params( 43 ) = (-0.468);
a2 = M_.params( 43 );
M_.params( 44 ) = (-0.335);
arho = M_.params( 44 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);           
AL_Info.forwards = {'ypsilon','ytilde','rho','infl','inflationq', 'ytildef', 'ytildeff', 'ypsilonf', 'ypsilonff'};
AL_Info.states_short = {'interest' ,   'inflationql',    'ytildel',    'z',    'zl',    'zll' ,   'ytilde',    'inflationq'};
AL_Info.states_long={'interest' ,   'inflationql',    'inflationql2' ,   'ytildel'  ,  'z'  ,  'zl' ,   'zll' ,   'ytilde' ,   'inflationq'};
save AL_Info AL_Info 
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 3 ) = 0;
oo_.steady_state( 4 ) = 0;
oo_.steady_state( 5 ) = (-M_.params(41))/M_.params(44);
oo_.steady_state( 6 ) = 0;
oo_.steady_state( 7 ) = (-M_.params(41))/M_.params(44);
oo_.steady_state( 9 ) = 0;
oo_.steady_state( 10 ) = 0;
oo_.steady_state( 8 ) = 0;
oo_.steady_state( 15 ) = 0;
oo_.steady_state( 14 ) = 0;
if M_.exo_nbr > 0;
	oo_.exo_simul = [ones(M_.maximum_lag,1)*oo_.exo_steady_state'];
end;
if M_.exo_det_nbr > 0;
	oo_.exo_det_simul = [ones(M_.maximum_lag,1)*oo_.exo_det_steady_state'];
end;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.027865679176;
M_.Sigma_e(2, 2) = 0.363551004125;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(1, 2) = (-0.026793217609);
M_.Sigma_e(2, 1) = M_.Sigma_e(1, 2);
M_.Sigma_e(1, 3) = 0;
M_.Sigma_e(3, 1) = M_.Sigma_e(1, 3);
M_.Sigma_e(3, 2) = 0;
M_.Sigma_e(2, 3) = M_.Sigma_e(3, 2);
M_.sigma_e_is_diagonal = 0;
save('US_FM95AL_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('US_FM95AL_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('US_FM95AL_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('US_FM95AL_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('US_FM95AL_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('US_FM95AL_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('US_FM95AL_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
