t=linspace(0,50,501); % 0 to 50 s, in 0.1 s steps
vel=zeros(1,501); % 501 readings of velocity
d=zeros(1,501);% Array for storing distance travelled
dT=0.1; % 0.1 second time step
for n=1:500
if vel(n)<10.8 % Torque constant till this point
vel(n+1)= vel(n) + dT*(1.57 - (0.00145*(vel(n)^2)));
elseif vel(n)>=10.8
vel(n+1)=vel(n)+dT*(7.30-(0.53*vel(n))-(0.00145*(vel(n)^2)));
end;
d(n+1)=d(n) + 0.1*vel(n); % Compute distance travelled.
end;
vel=vel.*3.6; % Multiply by 3.6 to convert m/s to kph
plot(t,vel); axis([0 30 0 50]);
xlabel('Time / seconds');
ylabel('Velocity / mph');
title('Full power (WOT) acceleration of TVS XL MOPED')
