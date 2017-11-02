figure(1);
plot(1:509999,vset(1:509999,2),1:509999,abs(vset(1:509999,1)),1:509999,MA_err(1:509999,1));
legend('mantee Actual','manatee test','MA error');

% figure(1);
% plot(1:509999,abs(vset(1:509999,1)),'r',1:509999,MA_err(1:509999,1),'y',1:509999,vset(1:509999,2),'b');
% legend('mantee Actual','manatee test','MA error');

% figure(2);
% plot(1:509999,vset(1:509999,2),1:509999,vset(1:509999,1),1:509999,y);
% legend('mantee Actual','manatee test','estimated signal');
% 
figure(3);
plot(1:509999,vset(1:509999,2),1:509999,vset(1:509999,1),1:509999,y(1:509999,1),1:509999,decider(1:509999,1) );
legend('mantee Actual','manatee test','estimated signal','Decider');

figure(4);
plot(1:509999,vset(1:509999,2),1:509999,abs(vset(1:509999,1)),1:509999,MA_abs_d(1:509999,1));
legend('mantee Actual','manatee test','MA of D');

figure(5);
x=1:509999;
plot(x,abs(vset(1:509999,1)),x,MA_abs_d(1:509999,1),x,MA_err(1:509999,1),x,vset(1:509999,2));