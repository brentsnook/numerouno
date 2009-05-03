require File.join(File.dirname(__FILE__), 'numerouno-parsing')

module Numerouno

  module StringExtensions
  
    def parse_i
      Numerouno.parse self
    end
  end
     
end

String.send :include, Numerouno::StringExtensions