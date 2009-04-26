$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Numerouno
  VERSION = '0.0.1'
    
  module StringExtensions
    NUMBERS = {
      0 => /zero/,
      1 => /one/,
      2 => /two/,
      3 => /three/,
      4 => /four/,
      5 => /five/,
      6 => /six/,
      7 => /seven/,
      8 => /eight/, 
      9 => /nine/,
      10 => /ten/
    }
  
    def parse_i
      match = NUMBERS.find{|number, pattern| self.match pattern }
      match ? match.first : raise(NoNumberFoundError, "No number found in string: #{self}")
    end
  end
  
  class NoNumberFoundError < StandardError; end    
end

String.send :include, Numerouno::StringExtensions  