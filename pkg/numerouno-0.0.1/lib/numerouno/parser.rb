module Numerouno  
  module Parser
    
    extend CombinerMethods
    extend SearchMethods
    
    def self.number_from string
      numbers = numbers_within string 
      numbers.empty? ? raise(NoNumberFoundError, "No number found in string: #{string}") :
        total(numbers)
    end
  
    private
  
    def self.total numbers
      [10, 100, 1000, 1000000, 1000000000, 1000000000000].each do |power|
        combine(numbers).of_power(power).apply!
      end
      numbers.inject(0){|sum, add| sum + add}
    end  

  end

  class NoNumberFoundError < StandardError; end
end