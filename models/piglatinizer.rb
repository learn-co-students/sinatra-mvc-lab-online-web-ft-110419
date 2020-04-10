class PigLatinizer
    attr_reader :input

    def piglatinize(input)
        input.split(" ").length == 1 ? piggy_word(input) : piggy_string(input)
    end    
    def piggy_word(og_word)
        return convert(og_word)
    end
    def piggy_string(sentance)
       piggy_sentance = sentance.split.collect do |t|
           piggy_word(t)
        end
        return piggy_sentance.join(" ")
    end 
    def convert(x)
        low_alpha = ('a'..'z').to_a
        cap_alpha = ('A'..'Z').to_a
        alpha = cap_alpha + low_alpha
        vowels = %w[a A e E i I o O u U]
        consonants = alpha - vowels
        if vowels.include?(x[0])
            word = x + 'way'
        else 
            while consonants.include?(x[0])
               x = x[1..-1] + x[0]
            end
            word = x + "ay"
        end
        return word
    end
end
