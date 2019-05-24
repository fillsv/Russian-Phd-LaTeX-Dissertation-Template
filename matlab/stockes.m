k = .36;
omega = 2*pi*3;
h = 16;
t = 0;
dt = 0.01;
a = 10;
num = 5e4*2+5e2;
x = zeros(num+1, 1);
z = x;
z(1)=-.1;
phi = pi/2;
clf
for ii = 1:num
    t = dt*(ii-1);
    Vx = -a*k*sin(k*x(ii)-omega*t+phi);%*exp(k*(z(ii)));
    Vz = 0;
%     Vz = a*k*cos(k*x(ii)-omega*t+phi);%*exp(k*(z(ii)));
    x(ii+1) = x(ii) + Vx*dt;
    z(ii+1) = z(ii) + Vz*dt;
    plot(x,z, '.');
    drawnow;

end
%     
% xlabel('x')
% ylabel('z')
% set(gca, 'FontSize', 15)
% set(gcf, 'PaperPosition', [0 0  15 10])
% name = 'StockesTrack';
% saveas(gcf, [name '.jpg'])
% saveas(gcf, [name '.epsc'])
% movefile([name '.epsc'], [name '.eps'])
