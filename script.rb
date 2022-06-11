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

def check_if_character_is_uppercase_letter(character)
  character >='A' && character <= 'Z'
end

def wrap_to_start_lowercase(num) 
  num - 123 + 97
end

def wrap_to_start_uppercase(num) 
  num - 91 + 65
end

def check_if_lowercase_ascii_num_is_in_letter_range(num)
  num  <= 122 
end

def check_if_uppercase_ascii_num_is_in_letter_range(num)
  num  <= 90 
end


def caesar_cipher(string, shift_value)    
  new_string = ''
  string.each_char do |char| 
    ascii_num =  convert_character_to_ascii_num(char)
    shifted_ascii_num = shift_ascii_num(ascii_num, shift_value)
    shifted_char = convert_ascii_num_to_character(shifted_ascii_num)

    if check_if_character_is_lowercase_letter(char)
      if check_if_lowercase_ascii_num_is_in_letter_range(shifted_ascii_num)
        new_string += shifted_char
      else
        new_string += convert_ascii_num_to_character(wrap_to_start_lowercase(shift_ascii_num))
      end
    elsif check_if_character_is_uppercase_letter(char) 
      if check_if_uppercase_ascii_num_is_in_letter_range(shifted_ascii_num)
        new_string += shifted_char
      else
        new_string += convert_ascii_num_to_character(wrap_to_start_uppercase(shifted_ascii_num))    
      end
    else 
      new_string += char
        
    end
  end
   p new_string
end


caesar_cipher("What a string!", 5);

