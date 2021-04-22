function CumulativeVolIncreasePlot(aTime, aCVol, aAlvVol, oLung)

    figout = figure('Units','inches','Position',[0.5,8.5,8.0 3.0],'PaperPositionMode','auto');
    set(gcf,'color','white');
    box on;
    hold on;

    vVolCut = oLung.aoComp(1).vFVolAlv*oLung.vVolAlv/oLung.aFCompOrdered(1)

    p1 = plot((aTime-aTime(1))/60, aCVol);
    p2 = plot((aTime-aTime(1))/60, aAlvVol - aAlvVol(1));
    p3 = plot((aTime-aTime(1))/60, ones(size(aTime))*vVolCut,'Color', [0 0 0],'Linestyle','--');

    set(gca,...
        'Units','normalized',...
        'Position',[.15 .2 .75 .7],...
        'FontUnits','points',...
        'FontWeight','normal',...
        'FontSize',15,...
        'FontName','Times');
        legend([p1 p2], {'Data','Model Lung'},'Location','best');

    xlabel('Time / min');
    ylabel('Volume / l (STPD)');

end
