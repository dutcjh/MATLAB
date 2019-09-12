function [nhigh, nlow] = bianyi(phigh, plow)
h_len = length(phigh);
l_len = length(plow);
ps = sort([phigh;plow]);
perf = ps(l_len);
lowf = ps(h_len);
nhigh = phigh;
for i = 1:h_len
    if phigh(i) > perf
        nhigh(i) = phigh(i) + normrnd(5,4);
    elseif phigh(i) < lowf
        nhigh(i) = phigh(i) + normrnd(3,2);
    else 
        nhigh(i) = phigh(i) + normrnd(4,3);
    end 
end
nlow = plow;
for i = 1:l_len
    if plow(i) > perf
        nlow(i) = plow(i) + normrnd(2.5,3);
    elseif plow(i) < lowf
        nlow(i) = plow(i) + normrnd(1.5,2);
    else 
        nlow(i) = plow(i) + normrnd(2,2);
    end 
end
% nhigh = phigh + normrnd(1.5,1,[h_len,1]);
% nlow = plow +normrnd(1,1,[l_len,1]);
end