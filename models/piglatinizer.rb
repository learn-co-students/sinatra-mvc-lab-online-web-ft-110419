class PigLatinizer
  
  def piglatinize(phrase)
    words = phrase.split
    words.collect do |word|
      if word.match(/^[aeiouAEIOU]/)
        word + 'way'
      else
        front = word.match(/^[bcdfghjklmnpqrstvwxyz]+/i)
        word.slice!(front.to_s)
        word << front.to_s + 'ay'
      end
    end.join(" ")
  end

end