final_avg=[];
final_sem=[];
for bnum=1:4;
    
    name=sprintf("vis_%d.csv",bnum);
    
    raw=xlsread(name);
    raw(:,1)=[];
    raw(1,:)=[];
    raw=raw;
    
    avg=mean(raw);
    SEM = std(raw)/sqrt(length(raw));
    
    final_avg=[final_avg;avg];
    final_sem=[final_sem;SEM];
    
end

final_avg=final_avg(:,1:4);
final_sem=final_sem(:,1:4);

final_avg=mean(final_avg,2);
final_sem=mean(final_sem,2);

fig = figure;

subplot(1,2,2)
set(gcf,'color','w')
errorbar(final_avg,final_sem,'k','linewidth',2)
set(gca,'linewidth',2);
box off
set(gca,'FontSize', 16)

xticks(1:1:4)
yticks(0:1:7)
xlim([0 5]) ; ylim([0 7])

title('Mean visibility','FontSize',20)
xticklabels({'1','2','3','4','5', '6', '7', '8'})
xlabel('Dataset','FontSize',16);


final_avg=[];
final_sem=[];
for bnum=1:4;
    
    name=sprintf("acc_%d.csv",bnum);
    
    raw=xlsread(name);
    raw(:,1)=[];
    raw(1,:)=[];
    
    avg=mean(raw);
    SEM = std(raw)/sqrt(length(raw));
    
    final_avg=[final_avg;avg];
    final_sem=[final_sem;SEM];
    
end

final_avg=final_avg(:,1:4);
final_sem=final_sem(:,1:4);

final_avg=mean(final_avg,2);
final_sem=mean(final_sem,2);

subplot(1,2,1)
set(gcf,'color','w')
errorbar(final_avg,final_sem,'k','linewidth',2)
set(gca,'linewidth',2);
box off
set(gca,'FontSize', 16)
xticks(1:1:4)
xlim([0 5]) ; ylim([0 1])

% legend('K1','K2','K3','K4','LineWidth', 1)
title('Performance correct','FontSize',20)

xticklabels({'1','2','3','4','5', '6', '7', '8'})
xlabel('Dataset','FontSize',16);




set(gcf,'OuterPosition', [3, 270, 750, 480])


