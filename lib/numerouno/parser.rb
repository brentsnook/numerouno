module Numerouno  
  module Parser
    
    extend CombinerMethods
    extend SearchMethods
    
    def self.number_from string
      parse_literal_within(string) || parse_phrase_within(string)
    end
  
    private
    
    def self.parse_literal_within string
      number = string.to_i
      number if number != 0 or string =~ /^0/  
    end
    
    def self.parse_phrase_within string
      numbers = numbers_within string 
      numbers.empty? ? raise(NoNumberFoundError, "No number found in string: #{string}") :
        total(numbers)
    end
    
    def self.total numbers
      [10, 100, 1000, 1000000, 1000000000, 1000000000000].each do |power|
        combine(numbers).of_power(power).apply!
      end
      numbers.inject(0){|sum, add| sum + add}
    end  

  end

  class NoNumberFoundError < StandardError; end
end