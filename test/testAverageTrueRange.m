function testAverageTrueRange()

load spy; 

[atr,~] = Indicator.averageTrueRange(Stock.High,Stock.Low,Stock.Close,14);

ax(1) = subplot(211); 
plot(Stock.Close,'b'); hold on; 

ax(2) = subplot(212); 
plot(atr,'r');
title('Average True Range'); 

linkaxes(ax,'x'); 

