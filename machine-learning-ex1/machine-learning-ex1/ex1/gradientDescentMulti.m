function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    
    h = zeros(m,1);
    disp('computeCostMulti');  
    J_history(iter) = computeCostMulti(X,y,theta);
    
    
    h = X*theta;
    
    tmp1 = zeros(size(X,2),1);  
    for i=1:m  
       tmp1= tmp1+(h(i)-y(i)).*X(i,:)'; %º∆À„sum((hi-yi)*xi)  
    end;  
    theta = theta - (alpha/m)*tmp1;%º∆À„Jtheta  
    disp(J_history(iter));  
    disp(theta);  


    % ============================================================

    % Save the cost J in every iteration    
  

end

end
