class PigLatinizer
  attr_reader :words
 
  def initialize
    
  end
 
  def piglatinize(str)
    str.split(" ").length == 1 ? piglatinize_word(str) : piglatinize_sentence(str)
  end
  
  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(str)
    if !consonant?(str[0])
      str = str + "w"
    # word starts with 3 consonants
    elsif consonant?(str[0]) && consonant?(str[1]) && consonant?(str[2])
      str = str.slice(3..-1) + str.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(str[0]) && consonant?(str[1])
      str = str.slice(2..-1) + str.slice(0,2)
    # word starts with 1 consonant
    else
      str = str.slice(1..-1) + str.slice(0)
    end
    str << "ay"
  end
  
  def piglatinize_sentence(str)
    str.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

end