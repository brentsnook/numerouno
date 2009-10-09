module Numerouno
  
  module SearchMethods
    
    def numbers_within string
      Search.new(string).find_all
    end
    
  end  
  
  class Search
    
    include Numbers
    
    def initialize string
      @string = string
      @numbers = []
    end  
    
    def find_all
      search until string_exhausted?
      @numbers.compact
    end
    
    private
    
    def search
      if match = next_match
        @string = string_without match
        @numbers[match.pre_match.length] = NUMBER_LOOKUP[match.to_s.downcase]
      else
        @string = ''
      end
    end
    
    def string_without match
      match.pre_match + (' ' * match.to_s.length) + match.post_match
    end  
    
    def next_match
      NUMBER_STRINGS.collect do |number_string, number|
        @string.match(/#{number_string}/i)
      end.compact.first
    end
    
    def string_exhausted?
      @string.sub(' ', '').empty?
    end  
  end
end  