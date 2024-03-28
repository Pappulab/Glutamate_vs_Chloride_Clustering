clear all
load dHFUSCl.dat
load dHFUSGlu.dat
rc = 0.5*dHFUSCl(:,1);
rg = 0.5*dHFUSGlu(:,1);
vm = (4/3)*pi*(4.6^3);
rc3 = rc.^3; rg3 = rg.^3;
vc = (4/3)*pi*rc3;
vg = (4/3)*pi*rg3;
nRc = 0.64*(vc/vm); nRg = 0.64*(vc/vm);
nCc = 0.33*(vc/vm); nCg = 0.33*(vc/vm);
nTick = [1 10 10^2 10^3 10^4 10^5 10^6 10^7 10^8];
%
figure(1)
clf
%
%
subplot(3,4,1)
plot(dHFUSCl(:,1),dHFUSCl(:,2),'c',...
    dHFUSGlu(:,1),dHFUSGlu(:,2),'c:','LineWidth',3)
xlim([0 1e3])
xlabel('d_H (nm)')
ylabel('f(d_H)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
legend('Chloride (0.22%)','Glutamate (0.6%)')
title('c_F_U_S = 0.125 然')
%
subplot(3,4,2)
plot(dHFUSCl(:,1),dHFUSCl(:,5),'r',...
    dHFUSGlu(:,1),dHFUSGlu(:,5),'r:','LineWidth',3)
xlim([0 1e3])
xlabel('d_H (nm)')
ylabel('f(d_H)')
legend('Chloride (0.18%)','Glutamate (0.8%)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
title('c_F_U_S = 0.25 然')

subplot(3,4,3)    
xlim([0 1e3])
plot(dHFUSCl(:,1),dHFUSCl(:,8),'m',...
    dHFUSGlu(:,1),dHFUSGlu(:,8),'m:','LineWidth',3)
xlim([0 1e3])
xlabel('d_H (nm)')
ylabel('f(d_H)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
legend('Chloride (0.23%)','Glutamate (0.8%)')
title('c_F_U_S = 0.5 然')

subplot(3,4,4)
plot(dHFUSCl(:,1),dHFUSCl(:,11),'b',...
    dHFUSGlu(:,1),dHFUSGlu(:,11),'b:','LineWidth',3)
xlim([0 1e3])    
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
xlabel('d_H (nm)')
ylabel('f(d_H)')
legend('Chloride (0.38%)','Glutamate (0.9%)')
title('c_F_U_S = 1.0 然')
%
subplot(3,4,5)
plot(log10(nRc),dHFUSCl(:,2),'c-',...
    log10(nRg),dHFUSGlu(:,2),'c:','LineWidth',3)
xlim([1 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%
subplot(3,4,6)
plot(log10(nRc),dHFUSCl(:,5),'r-',...
    log10(nRg),dHFUSGlu(:,5),'r:','LineWidth',3)
xlim([1 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%
subplot(3,4,7)
plot(log10(nRc),dHFUSCl(:,8),'m-',...
    log10(nRg),dHFUSGlu(:,8),'m:','LineWidth',3)
xlim([1 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%
subplot(3,4,8)
plot(log10(nRc),dHFUSCl(:,11),'b-',...
    log10(nRg),dHFUSGlu(:,11),'b:','LineWidth',3)
xlim([0 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%
%
subplot(3,4,9)
plot(log10(nCc),dHFUSCl(:,2),'c-',...
    log10(nCg),dHFUSGlu(:,2),'c:','LineWidth',3)
xlim([1 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%
subplot(3,4,10)
plot(log10(nCc),dHFUSCl(:,5),'r-',...
    log10(nCg),dHFUSGlu(:,5),'r:','LineWidth',3)
xlim([1 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)

%
subplot(3,4,11)
plot(log10(nCc),dHFUSCl(:,8),'m-',...
    log10(nCg),dHFUSGlu(:,8),'m:','LineWidth',3)
xlim([1 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%
subplot(3,4,12)
plot(log10(nCc),dHFUSCl(:,11),'b-',...
    log10(nCg),dHFUSGlu(:,11),'b:','LineWidth',3)
xlim([0 8])
xlabel('n')
ylabel('f(n)')
set(gca,'FontSize',14,'FontName','Arial','FontWeight','Bold')
set(gca,'XTickLabel',nTick)
%


%

