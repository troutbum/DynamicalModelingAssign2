% % Use Euler's method to integrate simple one variable ODE
% % Use program as template for more interesting models

% % Note:  produces slightly different output compared with 
% % example shown in class.  Different values of b, dt, tlast

Vin = 036 ;
k1 = 0.02 ;
kp = 6 ;
Km = 13 ;
 
dt    = 0.2 ;  
tlast = 20 ; % s
 
iterations = round(tlast/dt) ; 
xall = zeros(iterations,1) ;

ATP = 4 ;
G = 3 ;

x = c ;
for i = 1:iterations 
  xall(i) = x ;
  dxdt = a - b*x ;
  x = x + dxdt*dt ;    
end % of this time step

time = dt*(0:iterations-1)' ;
figure
plot(time,xall)
