function bit_48 = expansionPermutation(bit_32)

    bit_48 = [];
    bit_32;
    
    x0=bit_32(1:4);
    x1=bit_32(5:8);
    x2=bit_32(9:12);
    x3=bit_32(13:16);
    x4=bit_32(17:20);
    x5=bit_32(21:24);
    x6=bit_32(25:28);
    x7=bit_32(29:32);
    
    
    bit_48 = [x7(4) x0 x1(1) x0(4) x1 x2(1) x1(4) x2 x3(1) x2(4) x3 x4(1) x3(4) x4 x5(1) x4(4) x5 x6(1) x5(4) x6 x7(1) x6(4) x7 x0(1)] ;

end

