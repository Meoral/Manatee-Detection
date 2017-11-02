% figure(1);
%  
%   x = 1:length(MSEmatrix(1,:));
%  plot(x,MSEmatrix(1,:),x,MSEmatrix(2,:),x,MSEmatrix(3,:),x,MSEmatrix(4,:),x,MSEmatrix(5,:));
%  legend('Filter order 3', 'Filter order 5', 'Filter order 10', 'Filter order 15', 'Filter order 20');
%  title('Learning Curve - Variation of filter order with mu = 0.3')
%  xlabel('Sample points')
%  ylabel('MSE');
%  
 
 figure(1);
 
  x = 1:length(MSEmatrix(1,:));
 plot(x,MSEmatrix(1,:));
 title('Learning Curve - Variation of filter order with mu = 0.3 and filter size 15')
 xlabel('Sample points')
 ylabel('MSE');
 
 
 
 
 
 
figure(2)
x = 1:length(weightmatrix(1,:));
plot(x,weightmatrix(1, :),x,weightmatrix(2, :),x,weightmatrix(3, :),x,weightmatrix(4, :),x,weightmatrix(5, :),x,weightmatrix(6, :),x,weightmatrix(7, :),x,weightmatrix(8, :),x,weightmatrix(9, :),x,weightmatrix(10, :),x,weightmatrix(11, :),x,weightmatrix(12, :),x,weightmatrix(13, :),x,weightmatrix(14, :),x,weightmatrix(15, :));
legend('w0','w1','w2','w3','w4','w5','w6','w7','w8','w9','w10','w11','w12','w13','w14');
title('Change of weights with iterations')
xlabel('Iterations')
ylabel('Weights')