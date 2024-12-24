function result = myFunctionImproved(input)
  % Some code here that might cause an error
  if someCondition(input)
    result = someCalculation(input);
  else
    result = [];  % Returning an empty array
  end

  if ~isempty(result) % Check if the result is an empty array
    result = result * 2; 
  end
end

% Example call that might trigger the error
input = [];
result = myFunctionImproved(input); 