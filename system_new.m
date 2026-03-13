function [x1,x3,x1_obs,x3_obs,time]=system_new(x0)  %call simulink with initial condition
 integrator_blocks = {
        'cartpole_with_obsever_new/Integrator1', ...
        'cartpole_with_obsever_new/Integrator2', ...
        'cartpole_with_obsever_new/Integrator3', ...
        'cartpole_with_obsever_new/Integrator4', ...
        'cartpole_with_obsever_new/Integrator5', ...
        'cartpole_with_obsever_new/Integrator6', ...
        'cartpole_with_obsever_new/Integrator7', ...
        'cartpole_with_obsever_new/Integrator8'
    };
 for i = 1:length(integrator_blocks)
        set_param(integrator_blocks{i}, 'InitialCondition', num2str(x0(i)));
        disp(['Integrator ' num2str(i) ' InitialCondition: ' get_param(integrator_blocks{i}, 'InitialCondition')]);
 end
simout=sim('cartpole_with_obsever_new.slx',[0,3]);    
x1=simout.yout{1}.Values;
x3=simout.yout{2}.Values;
x1_obs=simout.yout{3}.Values;
x3_obs=simout.yout{4}.Values;
time=x1.Time;
x1=x1.Data;
x3=x3.Data;
x1_obs=x1_obs.Data;
x3_obs=x3_obs.Data;
end