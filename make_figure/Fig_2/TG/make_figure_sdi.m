
path1='C:\Users\user\Desktop\Kaniza_make figure\fig5 only vis';
path2='C:\Users\user\Desktop\Kaniza_make figure\fig5 only vis\sdi3';

for a=1:12;
    
fig_ctg=fullfile(path1, sprintf('%d.fig',a));
fig_sdi=fullfile(path2, sprintf('%d.fig',a));

h1=openfig(fig_ctg,'reuse','invisible');
ax1 = gca;
h2 = openfig(fig_sdi,'reuse','invisible');
ax2 = gca;

fig1 = get(ax1,'children'); %get handle to all the children in the figure
fig2 = get(ax2,'children');

% test1.fig and test2.fig are the names of the figure files which you would % like to copy into multiple subplots
h3 = figure; %create new figure

s1 = subplot(3,2,1:4); %create and get handle to the subplot axes
xlim([-0.2 1])
ylim([-0.2 1])
% ylabel('Training time(s)');
yticks(-0.2:0.2:1)
set(gca,'XTicklabel',[])

set(gca,'TickDir','out')

% axis square

s2 = subplot(3,2,[5:6]);
xlim([-0.2 1])
ylim([-0.2 1.2])
xticks(-0.2:0.2:1)
yticks([0:1])
% axis square
set(gca,'TickDir','out')

copyobj(fig1,s1); %copy children to new parent axes i.e. the subplot axes
copyobj(fig2,s2);

set(s1,'CLim',[0.44 0.56]);
colormap(s1,jet)
ax1.Box = 'on'

set(gcf,'OuterPosition', [0, 0, 600, 947])

set(s1,'FontSize', 20)
set(s2,'FontSize', 20)

% xlabel('Testing time(s)');
% ylabel('Coding index');

p = get(s2, 'pos');
p(2) = p(2)*1.5;
set(s2, 'pos', p);

saveas(gcf, sprintf('%d.fig',a))

close all

end