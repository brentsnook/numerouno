module Numerouno
  
  module SearchMethods
    
    def numbers_within string
      Search.new(string).find_all
    end
    
  end  
  
  class Search

    # the mapping between number strings and numbers needs to be ordered
    # this is to avoid the wrong mapping being picked up
    # i.e /seven/ would match 'seventy' before /seventy/ 
    NUMBER_STRINGS = [
      ['sixty', 60],
      ['seventy', 70],
      ['eighty', 80],
      ['ninety', 90],
      ['fourteen', 14],
      ['sixteen', 16],
      ['seventeen', 17],
      ['eighteen', 18],
      ['nineteen', 19],
        
      ['zero', 0],
      ['one', 1],
      ['two', 2],
      ['three', 3],
      ['four', 4],
      ['five', 5],
      ['six', 6],
      ['seven', 7],
      ['eight', 8],
      ['nine', 9],
      ['ten', 10],
      ['eleven', 11],
      ['twelve', 12],
      ['thirteen', 13],
      ['fifteen', 15],
      ['twenty', 20],
      ['thirty', 30],
      ['forty', 40],
      ['fifty', 50],
      
      ['hundred', 100],
      ['thousand', 1000],
      ['million', 1000000],
      ['billion', 1000000000],
      ['trillion', 1000000000000]
    ]
    
    NUMBER_LOOKUP = NUMBER_STRINGS.inject(Hash.new) do |hash, map|
      hash[map[0]] = map[1]
      hash
    end
    
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
        @numbers[match.pre_match.length] = NUMBER_LOOKUP[match.to_s]
      else
        @string = ''
      end
    end
    
    def string_without match
      match.pre_match + (' ' * match.to_s.length) + match.post_match
    end  
    
    def next_match
      NUMBER_STRINGS.collect do |number_string, number|
        @string.match number_string
      end.compact.first
    end
    
    def string_exhausted?
      @string.sub(' ', '').empty?
    end  
  end
end  