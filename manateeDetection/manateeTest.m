%load manatee_signals.mat;
%soundsc(noise_signal);

%[y,Fs] = audioread('speech.WAV');
%y = train_signal(80000:230000);

y = vset(:,1);
figure;
plot(y);
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

Esqsum = 0;
for filterindex = 1:length(filterorderbag)
    filterorder = filterorderbag(filterindex);
    
    %weightmatrix = zeros(filterorder,length(inp));
    
    y = zeros ( N  , 1 ) ;
    sysorder = filterorder;
    %e = zeros(N);
   
    
    for n = sysorder : N 
        u = inp(n:-1:n-sysorder+1) ;
        yval= u * w;
        y(n)= yval;
        e(n) = d(n) - y(n) ;
        
        Esqsum = Esqsum + e(n)*e(n);
        MSE = Esqsum/n;

    end 


end