function testIndicatorClass
%Test Indicator Class. 

load spy; 

ema = Indicator.ExponentialMovingAverage(Stock.Close,200);

plot(Stock.Close,'b'); hold on; 
plot(ema,'r');
title('SPY'); 
legend({'Price','EMA200'},'location','best'); 
