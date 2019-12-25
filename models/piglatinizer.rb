class PigLatinizer
  
  def piglatinize(phrase)
    words = phrase.split
    words.collect do |word|
      if word.match(/^[aeiouAEIOU]/)
        word + 'way'
      else
        front = word.match(/^[bcdfghjklmnpqrstvwxyz]+/)
        piggy = word.split(front.to_s).last
        piggy << front.to_s + 'ay'
      end
    end.join(" ")
  end

end