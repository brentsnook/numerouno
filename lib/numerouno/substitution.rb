require 'strscan'

module Numerouno
  
  class Substitution
    
    include Numbers
    
    def initialize source
      @source = source
    end
  
    def sub
      matches = {}
      
      NUMBER_STRINGS.each do |number_string, number|
        matches = matches_within(@source, number_string).merge(matches)
      end

      matches.empty? ? @source : replace(matches, @source)
    end
    
    private

    def match_locations source, string
      match_locations = []
      scanner = StringScanner.new source
      while(scanner.scan_until(/#{string}/i))
        match_locations << scanner.pre_match.length
      end
      match_locations
    end
    
    def matches_within source, string 
      start_vs_length = {}
      match_locations(source, string).each do |start|
        start_vs_length[start] = string.length
      end
      start_vs_length
    end
    
    def replace match_locations, source
      
      sorted_matches = match_locations.sort
      
      first_match, last_match = sorted_matches.first, sorted_matches.last
      range = (first_match.first..(last_match.first + last_match.last - 1))
      
      phrase = source[range]
      
      source.sub(/#{phrase.downcase}/i, Parser.number_from(phrase).to_s)
    end
  end
  
end