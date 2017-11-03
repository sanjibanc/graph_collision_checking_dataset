clc;
clear;
close all;

%% Create data
cumulative_cost_set_new = [];
policy_set_new = [];

load test_set2.mat;
idx = [1 2 7 8 9];

for i = idx
    cumulative_cost_set_new = [cumulative_cost_set_new; cumulative_cost_set(i,:)];
    policy_set_new = [policy_set_new policy_set(i)];
end


load test_set2_other.mat
idx = [2 6];

for i = idx
    cumulative_cost_set_new = [cumulative_cost_set_new; cumulative_cost_set(i,:)];
    policy_set_new = [policy_set_new policy_set(i)];
end


load test_set2_drd.mat
idx = [1];

for i = idx
    cumulative_cost_set_new = [cumulative_cost_set_new; cumulative_cost_set(i,:)];
    policy_set_new = [policy_set_new policy_set(i)];
end

load test_set2_mvoi.mat
idx = [1];

for i = idx
    cumulative_cost_set_new = [cumulative_cost_set_new; cumulative_cost_set(i,:)];
    policy_set_new = [policy_set_new policy_set(i)];
end
%% re-arrange
idx = [1 2 6 7 3 4 9 8 5];
cumulative_cost_set = cumulative_cost_set_new(idx, :);
policy_set = policy_set_new(idx);

%% print
fprintf('Mean +- Std \n'); print_report( cumulative_cost_set, policy_set );
fprintf('Normalized Mean +- Std \n'); print_normalized_report( cumulative_cost_set, policy_set );
