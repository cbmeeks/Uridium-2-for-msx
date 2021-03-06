close all
% x = [0:1023]*2*pi/768;
% y = (abs(sin(x*2)./x)).^0.5;
% y(1)=2;
% y = 191*y/max(y);
% y = [ bitand([191:1:(191+192)],255) y];
% 
L = 512;
x = [0:(L-1)];

y = (212-2*x);

y = round(y);

y(234:end)=0;

plot(x,y); 
hold on;

i = find(y<0);

while ~isempty(i)
    y(i) = y(i)+256;
    i = find(y<0);
end

y = bitand(y(1:L),255);

plot(x,y);
grid on;

fid = fopen('rast.txt','w');
fprintf(fid,'  db  ');
fprintf(fid,'%i,',round(y(1:end-1)));
fprintf(fid,'%i ',round(y(end)  ));
fprintf(fid,'  \n  ');
fclose(fid);
