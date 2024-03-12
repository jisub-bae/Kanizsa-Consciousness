% load fig

fig_all={};
fig_all2={};
for a=1:12;
    
    name=sprintf("%d.fig",a);
    
    h=openfig(name,'reuse','invisible');
%     hold on
    
%     ax=gca;
    fig=get(h,'children');
    fig1=get(fig(2),'children');
    fig2=get(fig(1),'children');
%     contour(fig(4).XData,fig(4).YData,fig(4).ZData,[900 1000], 'k', 'LineWidth', 0.1);
%     
%     ax=gca;
%     fig=get(ax,'children');
%     
%     fig(5)=[];
    
    fig_all{a}=fig1;
    fig_all2{a}=fig2;
    
   
    
end

% h2 = figure; %create new figure
% 
% for a=1:12;
%     
%     %ctg
%     s = subplot(6,4,a); %create and get handle to the subplot axes
%     xlim([-0.2 1])
%     ylim([-0.2 1])
%     % ylabel('Training time(s)');
%     xticks(-0.2:0.2:1)
%     yticks(-0.2:0.2:1)
%     
%     axis square
%     
%     copyobj(fig_all{a},s)
%     
%     set(s,'CLim',[0.44 0.56]);
%     colormap(s,jet);
%     ax1.Box = 'on';
%     set(s,'FontSize', 16)
%     
%     %sdi
%     s = subplot(6,4,a+4); %create and get handle to the subplot axes
%     xlim([-0.2 1])
%     ylim([-0.2 1])
%     % ylabel('Training time(s)');
%     xticks(-0.2:0.2:1)
%     yticks(-0.2:0.2:1)
%     
%     axis square
%     
%     copyobj(fig_all2{a},s)
%     
%     set(s,'CLim',[0.44 0.56]);
%     colormap(s,jet);
%     ax1.Box = 'on';
%     set(s,'FontSize', 16)
%     
% end

%%

h2 = figure; %create new figure

ctg_fig_lo=[1:2:8];
ctg_fig_lo2=[ctg_fig_lo, ctg_fig_lo+24];
ctg_fig_lo2=[ctg_fig_lo2, ctg_fig_lo+48];
ctg_fig_lo=ctg_fig_lo2; clear ctg_fig_lo2;

sdi_fig_lo=[1:2:8]+16;
sdi_fig_lo2=[sdi_fig_lo, sdi_fig_lo+24];
sdi_fig_lo2=[sdi_fig_lo2, sdi_fig_lo+48];
sdi_fig_lo=sdi_fig_lo2; clear sdi_fig_lo2;

for a=1:12;
    
    lo=ctg_fig_lo(a);
    lo2=sdi_fig_lo(a);
    
    s1 = subplot(9,8,[lo,lo+1,lo+8,lo+9]); %create and get handle to the subplot axes
    
    copyobj(fig_all{a},s1);
    hold on
    plot([-0.2 -0.2],[-0.2 1],'color', 'k', 'LineWidth', 2);
    plot([-0.2 1],[-0.2 -0.2],'color', 'k', 'LineWidth', 2);
    xlim([-0.2 1])
    ylim([-0.2 1])
    % ylabel('Training time(s)');
    xticks(-0.2:0.2:1)
    yticks(-0.2:0.2:1)

    set(gca,'XTicklabel',[])
    set(gca,'TickDir','out')
    
    
    set(gca,'LineWidth',2)
    
    % axis square
    
    s2 = subplot(9,8,[lo2,lo2+1]);
    xlim([-0.2 1])
    ylim([0 1.2])
    xticks(-0.2:0.2:1)
    yticks([0:1])
    set(gca,'TickDir','out')
    set(gca,'LineWidth',2)
    % axis square
    
%     copyobj(fig_all{a},s1);
    copyobj(fig_all2{a},s2);
    
    set(s1,'CLim',[0.44 0.56]);
    colormap(s1,jet);
    ax1.Box = 'on';
    
    pos_w=rem(a,4)-3;
    if pos_w==-3;
        pos_w=1;
    end
    
    p = get(s1, 'pos');
    p(1) = p(1)+0.04*pos_w;
    set(s1, 'pos', p);
    
    p = get(s2, 'pos');
    p(1) = p(1)+0.04*pos_w;
    set(s2, 'pos', p);
    
    p = get(s2, 'pos');
    p(2) = p(2)+0.02;
    set(s2, 'pos', p);
    
    set(s1,'FontSize', 14)
    set(s2,'FontSize', 14)
    
    clear s1 s2
    
end

% set(gcf,'OuterPosition', [0, 0, 600, 947])


% 
% p = get(s2, 'pos');
% p(2) = p(2)*1.5;
% set(s2, 'pos', p);



set(gcf,'OuterPosition', [0, 0, 1000, 1080])




