$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

[
  'combiner',
  'numbers',
  'search',
  'parser',
  'substitution'
].each {|file| require "numerouno/#{file}"}

module Numerouno
  VERSION = '0.2.0'
  
  def self.parse string
    Parser.number_from string
  end
  
  def self.substitute_numbers string
    Substitution.new(string).sub
  end
  
end