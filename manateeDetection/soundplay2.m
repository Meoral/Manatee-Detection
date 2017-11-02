%load manatee_signals.mat;
%soundsc(noise_signal);

%[y,Fs] = audioread('speech.WAV');
%y = train_signal(80000:230000);

y = trainManatee;
% figure;
% plot(y);
y = y';
disp(length(y));
inp = y(1:length(y)-1);
d = y(2:length(y));

N=length(inp) ;	


%begin of algorithm
%filterorderbag = [5, 10, 15, 20,25, 30];

filterorderbag = [10];
NMSEmatrix = zeros(length(filterorderbag),1);
WSNRmatrix = zeros(length(filterorderbag),1);
LNMSEIntmatrix = zeros(length(filterorderbag),length(inp));

for filterindex = 1:length(filterorderbag)
    filterorder = filterorderbag(filterindex);
    
    %weightmatrix = zeros(filterorder,length(inp));
    
    y = zeros ( N  , 1 ) ;
    sysorder = filterorder;
   
    
    for n = sysorder : N 
        u = inp(n:-1:n-sysorder+1) ;
        yval= u * w;
        y(n)= yval;
        e(n) = d(n) - y(n) ;
        abs_e(n) = abs(e(n));
        
    end 


end
abs_e = abs_e';
window_size = 1000;
MA_err = tsmovavg(abs_e,'e',window_size,1);

abs_d = abs(d');
MA_abs_d = tsmovavg(abs_d,'e',window_size,1);