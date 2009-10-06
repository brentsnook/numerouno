module Numerouno
  
  class Substitution
    
    include Numbers
    
    def initialize source
      @source = source
    end
  
    def sub
      NUMBER_STRINGS.inject(@source) do |subbed, phrase_vs_number|
        phrase, number = *phrase_vs_number
        subbed.sub phrase, number.to_s
      end
    end
      
  end
  
end