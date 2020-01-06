class PigLatinizer

  def piglatinize(text)

    words = text.split(" ")
    converted_words = words.collect do |word|
      if is_vowel?(word[0])
        word = word + "way"
      else
        first_vowel_index = word.index(/[aeiou]/)
        word = "#{word.slice!(0...first_vowel_index)}ay".prepend(word)
      end

      word
    end
    converted_words.join(" ")
  end

  def is_vowel?(char)
    char.downcase.match?(/[aeiou]/)
  end
end