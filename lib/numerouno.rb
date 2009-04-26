$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Numerouno
  VERSION = '0.0.1'
  
  def parse_i
    0
  end    
end

String.send :include, Numerouno  