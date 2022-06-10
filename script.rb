def caesar_cipher(string, shift_value)    
  new_string = ''
  for pos in 0...string.length do 
    current_char = string[pos]
    #converts to ascii value 
    ascii_num = string[pos].ord() 
    if current_char >='a' && current_char <= 'z' 
      # z to a wrap logic
      if (ascii_num + shift_value) <= 122 
        new_string += (ascii_num  + shift_value ).chr
      else
        new_string += ((ascii_num + shift_value ) - 123 + 97).chr
      end
    elsif current_char >='A' && current_char <= 'Z' 
      # Z to A wrap logic
      if(ascii_num + shift_value) <= 90 
        new_string += (ascii_num + shift_value ).chr
      else
        new_string += ((ascii_num + shift_value ) - 91 + 65).chr    
      end
    else 
      # non letter characters
      new_string += current_char
        
        end
    end
   p new_string
end

caesar_cipher("What a string!", 5);

