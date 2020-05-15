function  x = classifyKey(keyhex)

 key = hexToBinaryVector(keyhex,64);
 
 keyf=[];

 parity = [57 49 41 33 25 17 9 1;58 50 42 34 26 18 10 2;59 51 43 35 27 19 11 3;60 52 44 36 63 55 47 39;60 52 44 36 63 55 47 39;31 23 15 7 62 54 46 38;30 22 14 6 61 53 45 37;29 21 13 5 28 20 12 4];

 for i = 1:56
    keyf=[keyf key(parity(i))];
 end

dif = 0;
kiprev = keyf;

for j = 1:16
    kiprev
   ki = keyGenerator(kiprev,j);
   if ~isequal(ki,kiprev)
       dif = dif+1;
   end
   kiprev = ki;
end
%dif
end

