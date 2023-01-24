clear,clc

[D,H]=meshgrid(3.5:8,8:18);
S = pi.*D.*H + ((pi.*(D.^2))/2);

%plot
k = contour(D,H,S,'k');
clabel(k);

%constraints
g = 400-((pi.*(D.^2).*H)/4);

hold on;
%plot
contour(D,H,g,[0 0],'k','linewidth',3);
contour(D,H,g,[0:.05:3],'c');