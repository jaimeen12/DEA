%'qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwer' 
% keyhex = '1F1F1F1F0E0E0E0E';
%    i = 1;
%    q2(keyhex);

% if keyhex(1) == '1'
%     z = [0 0 0];
%     key1 = hexToBinaryVector(keyhex);
%     key = [z key1]
%     disp('key=1')
% else
%  key = hexToBinaryVector(keyhex);
% end

%  keyGenerator(key,i);
% str = hexToBinaryVector('1F1F1F1F0E0E0E0E',64);
 %classifyKey(key);
 
%  keyhex = 'FF1F1F1F';
%  f = hexToBinaryVector(keyhex);
%  g=expansionPermutation(f);
%  h = sBox(g);
%  p = pBox(h);

% keyhex = '1F1F1F1F0E0E0E0E';
% hex = '1F1F1F1F0E0';
% [left right] = q3(keyhex,hex);
clc

str = hexToBinaryVector('0123456789ABCDEF',64);
key = hexToBinaryVector('133457799BBCDFF1',64);
q = DEA(str,key);
a = binaryVectorToHex(q)