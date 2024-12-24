function result = myFunction(input)
  % Some code here that might cause an error
  if someCondition(input)
    result = someCalculation(input);
  else
    result = [];  % Returning an empty array
  end
  result = result * 2; % Error: Multiplying an empty array by a scalar
end

% Example call that might trigger the error
input = [];
result = myFunction(input);