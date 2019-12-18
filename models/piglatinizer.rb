class PigLatinizer 
  
  def piglatinize(text)
    words = text.split(' ')
    words.map do |word| 
      beg = word.scan(/^([^AEIOU|aeiou]+)/).flatten.join
      end_ = word.scan(/[AEIOU|aeiou]\w+|[AEIOU|aeiou]/).join
      word.chars[0] =~ /[AEIOU|aeiou]/ ? "#{end_}way" : "#{end_}#{beg}ay"
    end.join(' ')
  end
  
end