$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Numerouno
  VERSION = '0.0.1'
  
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
    NUMBERS[self]
  end    
end

String.send :include, Numerouno  