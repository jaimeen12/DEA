function ki = q1(key,index)

    k = hexToBinaryVector(key,56);
    ki = keyGenerator(k,index);

end

