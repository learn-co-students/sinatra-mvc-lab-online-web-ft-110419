require 'pry'

class PigLatinizer
    
    attr_accessor :text, :pl_text

    def initialize(text: "")
        @text = text
    end

    def piglatinize(string) 
        self.text = string
        word_array = self.text.split(" ")
        pl_array = word_array.map do |word|
            cons = word.scan(/^[bcdfghjklmnpqrstvwxyz]+/i)
            if cons.empty?
                word += "way"
            else
                word = word.gsub(/^[bcdfghjklmnpqrstvwxyz]+/i, "")
                word += "#{cons[0] + "ay"}"
            end
        end
        self.pl_text = pl_array.join(" ")
    end

end

