$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Numerouno
  VERSION = '0.0.1'
    
  module StringExtensions
    NUMBERS = {
      'zero' => 0,
      'one' => 1,
      'two' => 2,
      'three' => 3,
      'four' => 4,
      'five' => 5,
      'six' => 6,
      'seven' => 7,
      'eight' => 8, 
      'nine' => 9,
      'ten' => 10
    }
  
    def parse_i
      NUMBERS[self] || raise(NoNumberFoundError, "No number found in string: #{self}")
    end
  end
  
  class NoNumberFoundError < StandardError; end    
end

String.send :include, Numerouno::StringExtensions  