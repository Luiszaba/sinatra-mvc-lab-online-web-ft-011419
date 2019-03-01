class PigLatinizer

    def piglatinize(user_string)
      user_string.split(" ").length == 1 ? piglatinize_word(user_string) : piglatinize_sentence(user_string)
    end
    
    def consonant?(char)
      !char.match(/[aAeEiIoOuU]/)
    end
  
    def piglatinize_word(string)
      if !consonant?(string[0])
        string = string + "w"
      elsif consonant?(string[0]) && consonant?(string[1]) && consonant?(string[2])
        string = string.slice(3..-1) + string.slice(0,3)
      elsif consonant?(string[0]) && consonant?(string[1])
        string = string.slice(2..-1) + string.slice(0,2)
      else
        string = string.slice(1..-1) + string.slice(0)
      end
      string << "ay"
    end
  
    def piglatinize_sentence(sentence)
      sentence.split.map {|string| piglatinize_word(string)}.join(" ")
    end
  
  end
