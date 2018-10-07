% Graphics for Results Created 08.10.2018, ITU FAA, Istanbul, Turkey by;            
% XX 		---> x@mail.com                                
% XX 		---> x@mail.com                                
% XX 		---> x@mail.com                     
% via use making use of the book xx                           
% For more question about models contact us                               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------------------------------------------------------------------%
figure(1)
title('Velocity,AoA,Beta');
subplot(3,1,1);
plot(Time,States(:,1));
title('Velocity');
xlabel('Time [sec]')
ylabel('Velocity [m/sec]');
grid on
hold on
subplot(3,1,2);
plot(Time,States(:,2)*180/pi);
title('Angle of Attack');
xlabel('Time [sec]')
ylabel('AoA [deg]');
grid on
hold on
subplot(3,1,3);
plot(Time,States(:,3)*180/pi);
title('Beta');
xlabel('Time [sec]')
ylabel('Sideslip Angle [deg]');
grid on
%-------------------------------------------------------------------------%
figure(2)
title('Roll,Pitch,Yaw');
subplot(3,1,1);
plot(Time,States(:,4)*180/pi);
title('Roll');
xlabel('Time [sec]')
ylabel('Phi [deg]');
grid on
hold on
subplot(3,1,2);
plot(Time,States(:,5)*180/pi);
title('Pitch');
xlabel('Time [sec]')
ylabel('Theta [deg]');
grid on
hold on
subplot(3,1,3);
plot(Time,States(:,6)*180/pi);
title('Yaw');
xlabel('Time [sec]')
ylabel('Psi [deg]');
grid on
hold on
%-------------------------------------------------------------------------%
figure(3)
title('P,Q,R');
subplot(3,1,1);
plot(Time,States(:,7)*180/pi);
title('Roll Rate');
xlabel('Time [sec]')
ylabel('P [deg]');
grid on
hold on
subplot(3,1,2);
plot(Time,States(:,8)*180/pi);
title('Pitch Rate');
xlabel('Time [sec]')
ylabel('Q [deg]');
grid on
hold on
subplot(3,1,3);
plot(Time,States(:,9)*180/pi);
title('Yaw Rate');
xlabel('Time [sec]')
ylabel('R [deg]');
grid on
hold on
%-------------------------------------------------------------------------%
figure(4)
title('Position');
plot3(States(:,10),States(:,11),(States(:,12)*(-1)));
xlabel('North [m]');
ylabel('East [m]');
zlabel('Altitude [m]');
grid on
hold on     
%-------------------------------------------------------------------------%
figure(5)
ss = size(States,1);
trajectory3(States(:,10),States(:,11),(States(:,12)*(-1)),...
            States(:,5),States(:,4),States(:,6),0.005,3000,'mig');
%-------------------------------------------------------------------------%              