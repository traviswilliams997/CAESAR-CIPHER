def caesar_cipher(string, num)
    new_string = ''
    for pos in 0 ...string.length do 
        if string[pos] >='a' && string[pos] <= 'z' 
             if (string[pos].ord() + num) <= 122 
            new_string += (string[pos].ord() + num ).chr
             else
                new_string += ((string[pos].ord() + num ) - 123 + 97).chr
             end

        elsif string[pos] >='A' && string[pos] <= 'Z' 
            if(string[pos].ord() + num) <= 90 
                new_string += (string[pos].ord() + num ).chr
            else
                new_string += ((string[pos].ord() + num ) - 91 + 65).chr    
            end
        else 
                new_string += string[pos]
            end
    end
   p new_string
end

caesar_cipher("What a string!", 5);

