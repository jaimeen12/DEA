function final = keyGenerator(key,i)

% if keyhex(1) == '1'
%     z = [0 0 0];
%     key1 = hexToBinaryVector(keyhex);
%     key = [z key1]
%     disp('key=1')
% else
%  key = hexToBinaryVector(keyhex);
% end

 key;

 left = key(1:28);
 right = key(29:56);
 
% right = extractAfter(key,28);
% left = extractBefore(key,29);

circulation = [1 2 4 6 8 10 12 14 15 17 19 21 23 25 27 28];

circulate = circulation(i);
comp = [14 17 11 24 1 5 3 28 15 6 21 10 23 19 12 4 26 8 16 7 27 20 13 2 41 52 31 37 47 55 30 40 51 45 33 48 44 49 39 56 34 53 46 42 50 36 29 32];


newright = circshift(right,[0,-circulate]);
newleft = circshift(left,[0,-circulate]);
% newleft
% newright


str = [newleft newright];
str;

for r = 1:48
        compressed(r) = str(comp(r));

end
final = compressed;
% final = binaryVectorToHex(compressed);
% final = final';
% final1 = string(final);
end

