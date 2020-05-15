function  dif = q2(keyhex)
if keyhex(1) == '1' 
    z = [0 0 0];
    key1 = hexToBinaryVector(keyhex);
    keyi = [z key1];
    %disp('key=1');
else
 keyi = hexToBinaryVector(keyhex);
end
% keyi
% IP = [58 50 42 34 26 18 10 2 60 52 44 36 28 20 12 4;62 54 46 38 30 22 14 6 64 56 48 40 32 24 16 8;57 49 41 33 25 17 9 1 59 51 43 35 27 19 11 3;61 53 45 37 29 21 13 5 63 55 47 39 31 23 15 7];
% 
% for r = 1:4
%     for s = 1:16
%         key(r,s) = keyi([IP(r,s)]);
%     end
% end

hexvec64 = binaryVectorToHex(keyi);
 keyf=[];
 
  parity = [57 49 41 33 25 17 9 1;58 50 42 34 26 18 10 2;59 51 43 35 27 19 11 3;60 52 44 36 63 55 47 39;31 23 15 7 62 54 46 38;30 22 14 6 61 53 45 37;29 21 13 5 28 20 12 4];
 
  for r = 1:7
    for s = 1:8
        keyf(r,s) = keyi([parity(r,s)]);
    end
end
 
% for i = 1:64
%     if(mod(i,8)~=0)
%         keyf = [keyf,key(i)];
%     end
% end

hexvec56 = binaryVectorToHex(keyf);
dif = 0;
kiprev = keyf;

for j = 1:16
    kiprev;
   ki = keyGenerator(keyf,j);
   if (isequal(ki,kiprev))
       dif = dif+1;
   end
   ki;
end
dif
end