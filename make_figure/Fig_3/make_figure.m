
h1=openfig('dia_4.fig','reuse','invisible');
ax1 = gca;
h2 = openfig('dia_5.fig','reuse','invisible');
ax2 = gca;
h3 = openfig('dia_6.fig','reuse','invisible');
ax3 = gca;

fig1 = get(ax1,'children'); %get handle to all the children in the figure
fig2 = get(ax2,'children');
fig3 = get(ax3,'children');

% test1.fig and test2.fig are the names of the figure files which you would % like to copy into multiple subplots
h3 = figure; %create new figure

s1 = subplot(1,3,1); %create and get handle to the subplot axes
xlim([-0.2 1])
ylim([0.48 0.55])
% ylabel('Training time(s)');
xticks(-0.2:0.2:1)
yticks(0.48:0.01:0.55)


% axis square

s2 = subplot(1,3,2); %create and get handle to the subplot axes
xlim([-0.2 1])
ylim([0.48 0.55])
% xlabel('Time(s)');
xticks(-0.2:0.2:1)
yticks(0.48:0.01:0.55)

s3 = subplot(1,3,3); %create and get handle to the subplot axes
xlim([-0.2 1])
ylim([0.48 0.55])
% ylabel('Training time(s)');
xticks(-0.2:0.2:1)
yticks(0.48:0.01:0.55)

copyobj(fig1,s1); %copy children to new parent axes i.e. the subplot axes
copyobj(fig2,s2);
copyobj(fig3,s3);

set(gcf,'OuterPosition', [0, 0, 1900, 500])

set(s1,'FontSize', 20)
set(s2,'FontSize', 20)
set(s3,'FontSize', 20)

% xlabel('Testing time(s)');
% ylabel('Coding index');
