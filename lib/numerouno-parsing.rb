$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

[
  'combiner',
  'numbers',
  'search',
  'parser',
  'substituter'
].each {|file| require "numerouno/#{file}"}

module Numerouno
  VERSION = '0.1.1'
  
  def self.parse string
    Parser.number_from string
  end
  
  def self.substitute_numbers string
    Substituter.sub string
  end
  
end