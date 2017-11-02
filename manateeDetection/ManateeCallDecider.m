%y should be more than 70% of d for 1 else 0

% error should be less than 30% to be called as a manatee signal.

decider = zeros(length(y),1);


for i = 1:length(y)
    if MA_err(i) < 0.7*MA_abs_d(i)     %have to use ROC to decide manatee FP and TPs
        decider(i) = 1;
    end
end

% for i = 1:length(y)
%     if y(i)*y(i) > 0.80*d(i)*d(i)
%         decider(i) = 1;
%     end
% end