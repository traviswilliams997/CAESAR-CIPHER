def convert_character_to_ascii_num(character)
  character.ord() 
end
def shift_ascii_num(num, value)
  num + value
end
def convert_ascii_num_to_character(ascii)
  ascii.chr
end
def check_if_character_is_lowercase_letter(character)
  character >='a' && character <= 'z'
end
def caesar_cipher(string, shift_value)    
  new_string = ''
  for pos in 0...string.length do 
    current_char = string[pos]
    ascii_num =  convert_character_to_ascii_num(current_char)
    shifted_ascii_num = shift_ascii_num(ascii_num, shift_value)
    shifted_char = convert_ascii_num_to_character(shifted_ascii_num)

    if check_if_character_is_lowercase_letter(current_char)
      # z to a wrap logic
      if shifted_ascii_num  <= 122 
        new_string += shifted_char
      else
        new_string += ( shifted_ascii_num - 123 + 97).chr
      end
    elsif current_char >='A' && current_char <= 'Z' 
      # Z to A wrap logic
      if shifted_ascii_num  <= 90 
        new_string += shifted_char
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

