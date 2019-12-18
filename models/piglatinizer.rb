class PigLatinizer 
  attr_accessor :text 
  
  def initialize(text)
    @text = text 
    transform
  end
  
  def transform
    vowels = %w(a e i o u)
    binding.pry
  end
end