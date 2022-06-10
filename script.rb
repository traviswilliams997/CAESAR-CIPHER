def caesar_cipher(strings, num)
    new_string = ''
    for pos in 0 ...strings.length do 
        if strings[pos] >='a' && strings[pos] <= 'z' || strings[pos] >='A' && strings[pos] <= 'Z'
            new_string += (strings[pos].ord() + num ).chr

        else
            new_string += strings[pos]
        end
    end
   p new_string
end

caesar_cipher("What a string!", 5);

