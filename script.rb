def caesar_cipher(strings, num)
    for pos in 0 ...strings.length do 
        if strings[pos] >='a' && strings[pos] <= 'z'  
             p (strings[pos].ord() + num ).chr

        end
    end
end

caesar_cipher("abc", 5);

