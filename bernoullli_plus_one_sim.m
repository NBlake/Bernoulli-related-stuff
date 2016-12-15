clear all
t = [];
n=1000000; % Number of trials - the higher the more accurate
j=1;
p = 0.25; % Probability of getting a B 
for i=1:n
    trial = binornd(1,0.25);
    if trial == 1
        t(j) = 1;
        t(j+1) = 0;
        j=j+2;
    elseif trial == 0
        t(j) = 0;
        j=j+1;
    end
end
sum(t)/length(t)

