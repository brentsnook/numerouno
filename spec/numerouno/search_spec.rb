require File.dirname(__FILE__) + '/spec_helper.rb'

describe Numerouno::Search do
  
  # a lot of the search functionality is already covered in the features
  
  it 'finds all numbers within a string' do
    search_for('seventy five thousand and forty two').should eql([70, 5, 1000, 40, 2])
  end  
  
  it "doesn't falsely identify partial numbers in powers of ten" do
    search_for('sixty seventy eighty ninety').should eql([60, 70, 80, 90])
  end
  
  it "doesn't falsely identify partial numbers in teens" do
    search_for('fourteen sixteen seventeen eighteen nineteen').should eql([14, 16, 17, 18, 19])
  end
  
  it 'finds uppercase numbers' do
    search_for('NINE is uppercase').should eql([9])
  end
  
  def search_for string
    Numerouno::Search.new(string).find_all
  end 
end

describe Numerouno::SearchMethods do
  
  include Numerouno::SearchMethods
  
  it 'builds a search' do
    numbers_within('one two three').should eql([1, 2, 3])  
  end
  
end