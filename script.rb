def convert_character_to_ascii_num(character)
    character.ord() 
end
def caesar_cipher(string, shift_value)    
  new_string = ''
  for pos in 0...string.length do 
    current_char = string[pos]
    ascii_num =  convert_character_to_ascii_num(current_char)
    shifted_ascii_num = ascii_num + shift_value
    new_char = shifted_ascii_num.chr

    if current_char >='a' && current_char <= 'z' 
      # z to a wrap logic
      if shifted_ascii_num  <= 122 
        new_string += new_char
      else
        new_string += ( shifted_ascii_num - 123 + 97).chr
      end
    elsif current_char >='A' && current_char <= 'Z' 
      # Z to A wrap logic
      if shifted_ascii_num  <= 90 
        new_string += new_char
      else
        new_string += (shifted_ascii_num - 91 + 65).chr    
      end
    else 
      #Adds non letter characters
      new_string += current_char
        
    end
  end
   p new_string
end


caesar_cipher("What a string!", 5);

