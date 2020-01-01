class PigLatinizer
	attr_reader :text 
	def initialize(text = "please input some text")
		@text = text
	end 

	def piglatinize(text)
		word_array = text.split(" ").delete_if{|char| char.match(/[^a-zA-Z]/)}
		pig_latin_words = word_array.map do |word|
			if word[0].match(/[aeiou]|[AEIOU]/)
				word + "way"
			elsif word[1].match(/[aeiouy]/)
				word[1..-1] + word[0] + "ay"
			elsif word[2].match(/[aeiouy]/)
				word[2..-1] + word[0..1] + "ay"
			else
				word[3..-1] + word[0..2] + "ay"
			end
		end
		pig_latin_words.join(" ")
	end

end