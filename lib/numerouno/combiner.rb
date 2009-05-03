module Numerouno

  module CombinerMethods
    
    def combine numbers
      Combiner.new numbers  
    end
      
  end  

  class Combiner
    
    def of_power power
      @power = power
      self  
    end
      
    def apply!
      @numbers.each_with_index do |number, index|
        @current = index
        if number_is_correct_power?
          apply :*, to_left if should_multiply?
          apply :+, to_right if should_add?
        end 
      end
      
      @numbers.compact!
    end
    
    private

    def initialize numbers
      @numbers = numbers
    end
       
    def should_multiply?
      @current > 0 and @power > 10
    end 
    
    def should_add?
      @current < (@numbers.length - 1) and number > @numbers[to_right]
    end 
    
    def apply operation, index
      @numbers[@current] = number.send operation, @numbers[index]
      @numbers[index] = nil
    end
    
    def to_left
      @current - 1
    end  
    
    def to_right
      @current + 1
    end
    
    def number_is_correct_power?
      number and (number % @power == 0) and number < (@power * 10)
    end 
    
    def number
      @numbers[@current]
    end   
  end
end