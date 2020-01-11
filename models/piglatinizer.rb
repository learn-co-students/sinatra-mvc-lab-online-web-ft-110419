# frozen_string_literal: true
require "pry"
class PigLatinizer
    # attr_reader :text
    # def initialize(text)
    #     @text = text
    # end

    def piglatinize(text)
        text.split(' ').map { |word| word_latinizer(word) }.join(' ')
    end

    def word_latinizer(word)
        if word =~ /\A[aeiou]/i
            word += 'way'
        elsif word =~ /\A[^aeiou]/i
            word_arr = word.split /([aeiou])(.*)/
            word = word_arr[1..].join + word_arr[0].to_s + 'ay'
        end
        word
    end
end
