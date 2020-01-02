class PigLatinizer
  
  def piglatinize(text)
    piglatinized_text = []
    words = text.split(' ')
    
    words.each do |word|
      if word[0].downcase =~ /[aeiou]/
        word = "#{word}way"
      elsif word[0].downcase == 'p'
        if word[1].downcase == 'l' || word[1].downcase == 'r'
          word = "#{word}#{word[0]}#{word[1]}ay"
          word[0] = ''
          word[0] = ''
        else
          word = "#{word}#{word[0]}ay"
          word[0] = ''
        end
      elsif word[0].downcase == 's'
        if word[1].downcase == 't' && word[2].downcase == 'r'
          word = "#{word}#{word[0]}#{word[1]}#{word[2]}ay"
          word[0] = ''
          word[0] = ''
          word[0] = ''
        elsif word[1].downcase == 'p' && word[2].downcase == 'r'
          word = "#{word}#{word[0]}#{word[1]}#{word[2]}ay"
          word[0] = ''
          word[0] = ''
          word[0] = ''
        elsif word[1].downcase == 'k'
          word = "#{word}#{word[0]}#{word[1]}ay"
          word[0] = ''
          word[0] = ''
        else
          word = "#{word}#{word[0]}ay"
          word[0] = ''
        end
      elsif word[0].downcase == 't' && word[1].downcase == 'h'
        word = "#{word}#{word[0]}#{word[1]}ay"
        word[0] = ''
        word[0] = ''
      elsif word[0].downcase == 'w' && word[1].downcase == 'h'
        word = "#{word}#{word[0]}#{word[1]}ay"
        word[0] = ''
        word[0] = ''
      else
        word = "#{word}#{word[0]}ay"
        word[0] = ''
      end
      piglatinized_text << word
    end
    
    return piglatinized_text.join(' ')
  end
  
end
