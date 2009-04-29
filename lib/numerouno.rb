$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Numerouno
  VERSION = '0.0.1'
    
  class Search

    # the mapping between number strings and numbers needs to be ordered
    # this is to avoid the wrong mapping being picked up
    # i.e /seven/ would match 'seventy' before /seventy/ 
    NUMBER_STRINGS = [
      ['sixty', 60],
      ['seventy', 70],
      ['eighty', 80],
      ['ninety', 90],
      ['fourteen', 14],
      ['sixteen', 16],
      ['seventeen', 17],
      ['eighteen', 18],
      ['nineteen', 19],
        
      ['zero', 0],
      ['one', 1],
      ['two', 2],
      ['three', 3],
      ['four', 4],
      ['five', 5],
      ['six', 6],
      ['seven', 7],
      ['eight', 8],
      ['nine', 9],
      ['ten', 10],
      ['eleven', 11],
      ['twelve', 12],
      ['thirteen', 13],
      ['fifteen', 15],
      ['twenty', 20],
      ['thirty', 30],
      ['forty', 40],
      ['fifty', 50],
      
      ['hundred', 100],
      ['thousand', 1000]
    ]
    
    NUMBER_LOOKUP = NUMBER_STRINGS.inject(Hash.new) do |hash, map|
      hash[map[0]] = map[1]
      hash
    end
    
    def initialize string
      @string = string
      @numbers = []
    end  
    
    def find_all_numbers
      search until string_exhausted?
      @numbers.compact
    end
    
    private
    
    def search
      if match = next_match
        @string = string_without match
        @numbers[match.pre_match.length] = NUMBER_LOOKUP[match.to_s]
      else
        @string = ''
      end
    end
    
    def string_without match
      match.pre_match + (' ' * match.to_s.length) + match.post_match
    end  
    
    def next_match
      NUMBER_STRINGS.collect do |number_string, number|
        @string.match number_string
      end.compact.first
    end
    
    def string_exhausted?
      @string.sub(' ', '').empty?
    end  
  end 
  
  class PowersOfTen 
    
    def self.amalgamate numbers
      numbers.each_with_index do |number, index|
        if is_power_of_10? number
          number_to_right = numbers[index + 1]
          if number_to_right and number_to_right < 10
            numbers[index] = number + number_to_right
            numbers[index + 1] = nil
          end  
        end  
      end
      
      numbers.compact!
    end
    
    def self.is_power_of_10? number
      number and (number % 10 == 0) and number < 100
    end  
  end

  class Amalgamation
    
    def initialize power, numbers
      @numbers = numbers
      @power = power
    end  
    
    def self.apply power, numbers
      new(power, numbers).run
    end  
    
    def run
      @numbers.each_with_index do |number, index|
        @current = index
        if number_is_correct_power?
          apply :*, to_left if number_to_left?
          apply :+, to_right if number_to_right?
        end 
      end
      
      @numbers.compact!
    end
    
    def number_to_left?
      @current > 0
    end 
    
    def number_to_right?
      @current < (@numbers.length - 1)
    end 
    
    def apply operation, index
      @numbers[@current] = number.send operation, @numbers[index]
      @numbers[index] = nil
    end  
    
    def add_number_to_right
      @numbers[@current] = number + @numbers[to_right]
      @numbers[to_right] = nil
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
    
  module Parser
    def self.number_from string
      numbers = Search.new(string).find_all_numbers 
      numbers.empty? ? raise(NoNumberFoundError, "No number found in string: #{string}") :
        total(numbers)
    end
    
    private
    
    def self.total numbers
      PowersOfTen.amalgamate numbers
      Amalgamation.apply(100, numbers)
      Amalgamation.apply(1000, numbers)
      numbers.inject(0){|sum, add| sum + add}
    end  
  
  end
        
  module StringExtensions
    
    include Parser
    
    def parse_i
      Parser.number_from self
    end
  end
  
  class NoNumberFoundError < StandardError; end    
end

String.send :include, Numerouno::StringExtensions