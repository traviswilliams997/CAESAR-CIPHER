def caesar_cipher(string, num)    
  new_string = ''
  for pos in 0...string.length do 
    char = string[pos]
    ascii_num = string[pos].ord() 
    if char >='a' && char <= 'z' 
    #(string[pos].ord() + num) converts to ascii value and add entered number
      # z to a wrap logic
      if (ascii_num + num) <= 122 
        new_string += (ascii_num  + num ).chr
      else
        new_string += ((ascii_num + num ) - 123 + 97).chr
      end
    elsif char >='A' && char <= 'Z' 
      # Z to A wrap logic
      if(ascii_num + num) <= 90 
        new_string += (ascii_num + num ).chr
      else
        new_string += ((ascii_num + num ) - 91 + 65).chr    
      end
    else 
      # non letter characters
      new_string += char
        
        end
    end
   p new_string
end

caesar_cipher("What a string!", 5);

