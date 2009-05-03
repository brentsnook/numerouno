$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

[
  'combiner',
  'search',
  'parser'
].each {|file| require "numerouno/#{file}"}

module Numerouno
  VERSION = '0.0.1'
        
  module StringExtensions
    
    include Parser
    
    def parse_i
      Parser.number_from self
    end
  end
     
end

String.send :include, Numerouno::StringExtensions