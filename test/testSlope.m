function  testSlope

load spy;

[m] = Indicator.slope(Stock.Close,200);

figure;
p(1) = subplot(211);
plot(Stock.Close);
title('SPY');
p(2) = subplot(212); hold('on');
title('Slope');
plot(m,'b');
linkaxes(p,'x');



end

