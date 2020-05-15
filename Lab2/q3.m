function [right, left,c] = q3(inputi,subkeyi)

%     input = hexToBinaryVector(inputi,64);
%     subkey = hexToBinaryVector(subkeyi,48);
    left = inputi(1:32);
    right = inputi(33:64);
    e = expansionPermutation(right);
    a = xor(e,subkeyi);
    b = sBox(a);
    c = pBox(b);
    prevright = right;
    right = xor(c,left);
    left=prevright;
    
    

end

