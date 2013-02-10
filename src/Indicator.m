classdef Indicator
    %Indicator Class
    %The following class is used to calculate technical indicators for
    %stock price data.
    
    properties
    end
    
    methods (Static)
        
        
        %% Calculate Exponential Moving Average.
        function ema = ExponentialMovingAverage(data,period)
            
            %Initialize ema Vector.
            ema = zeros(size(data));
            
            %Initialize First data point.
            ema(1) = data(1);
            
            %Calculate alpha
            alpha = (2./(1+period));
            
            %Calculate ema veoctor.
            for i = 2 : length(data);
                ema(i,:) = ema(i-1,:)+alpha.*(data(i)-ema(i-1,:));
            end
            
            
        end
        
        %% Calculate Rate of Change.
        function roc = RateOfChange(data,period)
            %Calculates Rate of change over period n.
            %ROC = ((Today's close - Close n periods ago) / (Close n periods ago)) * 100
            
            %Initialize roc data.
            roc = zeros(size(data));
            
            %Calcualte roc.
            for i = n : length(data)
                roc(i,:) = 100*(data(i) - data(i-period+1))/data(i-period+1);
            end
            
        end
        
        %% Calculate Price Momentum Oscillator.
        function [pmo,pmo10] = PriceMomentumOscillator(data,rocPeriod,emaPeriod)
            
            %DecisionPoint inputs: 13,50
             
            %Calculate Rate of Change.
            roc = roccalc(data,rocPeriod);
            
            %Calculate x ema of ROC.
            pmo = emacalc(roc,emaPeriod);
            
            %Calculate 10 ema on pmo.
            pmo10 = emacalc(pmo,10);                        
            
        end
        
        
    end
    
end

