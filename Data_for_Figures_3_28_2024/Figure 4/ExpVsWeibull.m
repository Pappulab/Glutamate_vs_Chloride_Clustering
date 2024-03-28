%comparing size distributions
%
clear all
x = 1:1:1e3;
l = 5; 
lW = 1;
k = 0.5:0.05:0.95;
E = l*exp(-l*x); E = E./sum(E);
W = zeros(length(k),length(x));
for i = 1:length(k)
    c1 = k(i)/lW;
    c2 = (x/lW).^(k(i)-1);
    c3 = exp(-(x/lW).^k(i));
    W(i,:) = c1*c2.*c3;
    W(i,:) = W(i,:)./sum(W(i,:));
end
%
clf
figure(1)
plot(log10(x),log10(E),'b-',log10(x),log10(W),'LineWidth',3)
colormap(hot)
ylim([-10 0])
set(gca,'FontName','Arial','FontSize',14)
