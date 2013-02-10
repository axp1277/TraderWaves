function  testPriceMomentumOscillator

load spy;

[pmo,pmo10] = Indicator.PriceMomentumOscillator(Stock.Close,50,200);

figure;
p(1) = subplot(211);
plot(Stock.Close);
title('SPY');
p(2) = subplot(212); hold('on');
title('Price Momentum Oscillator');
plot(pmo,'b');
plot(pmo10,'g');
linkaxes(p,'x');



end

