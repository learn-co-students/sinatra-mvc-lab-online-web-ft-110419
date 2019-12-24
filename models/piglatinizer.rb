class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text.downcase
  end

  def atinlay
    words = text.split
    words.collect{|word| ordway(word) }
  end

  def ordway(word)
    if word.match(/^[aeiou]/)
      word + 'way'
    else
      front = word.match(/^[bcdfghjklmnpqrstvwxyz]+/)
      piggy = word.delete(front.to_s)
      piggy << front.to_s + 'ay'
    end
  end

end