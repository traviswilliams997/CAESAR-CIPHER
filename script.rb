def convert_character_to_ascii_num(current_character)
  current_character.ord() 
end

def shift_ascii_num(num, value)
  num + value
end

def convert_ascii_num_to_character(num)
  num.chr
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
  shifted_string = ''
  string.each_char do |current_character| 
    ascii_number =  convert_character_to_ascii_num(current_character)
    shifted_ascii_number = shift_ascii_num(ascii_number, shift_value)
    shifted_character = convert_ascii_num_to_character(shifted_ascii_number)

    if check_if_character_is_lowercase_letter(current_character)
      if check_if_lowercase_ascii_num_is_in_letter_range(shifted_ascii_number)
        shifted_string += shifted_character
      else
        shifted_string += convert_ascii_num_to_character(wrap_to_start_lowercase(shift_ascii_number))
      end
    elsif check_if_character_is_uppercase_letter(current_character) 
      if check_if_uppercase_ascii_num_is_in_letter_range(shifted_ascii_number)
        shifted_string += shifted_character
      else
        shifted_string += convert_ascii_num_to_character(wrap_to_start_uppercase(shifted_ascii_number))    
      end
    else 
      shifted_string += current_character
        
    end
  end
   p shifted_string
end


caesar_cipher("What a string!", 5);

