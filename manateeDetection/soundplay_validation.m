%load manatee_signals.mat;
%soundsc(noise_signal);

%[y,Fs] = audioread('speech.WAV');
%y = train_signal(80000:230000);  % 2 manatee calls

%y = train_signal(80000:470000);  %4 manatee calls
y = v_m;
figure;
plot(y);
y = y';
disp(length(y));
inp = y(1:length(y)-1);
d = y(2:length(y));

N=length(inp) ;	


%begin of algorithm
mu = 0.3;
%filterorderbag = [5, 10, 15, 20,25, 30];

filterorderbag = [15];

MSEmatrix = zeros(length(filterorderbag),length(inp));

for filterindex = 1:length(filterorderbag)
    filterorder = filterorderbag(filterindex);
    
    weightmatrix = zeros(filterorder,length(inp));
    
    y = zeros ( N  , 1 ) ;
    sysorder = filterorder;
   % w = zeros ( sysorder  , 1 ) ;
    
    Esqsum = 0;
    
    for n = sysorder : N 
        u = inp(n:-1:n-sysorder+1) ;
        yval= u * w;
        y(n)= yval;
        e(n) = d(n) - y(n) ;
        
        %w = w + (mu * u * e(n))' ;
        
        weightmatrix(:,n)=w;
        
        Esqsum = Esqsum + e(n)*e(n);
        MSEmatrix(filterindex,n) = Esqsum/n;

    end 
end