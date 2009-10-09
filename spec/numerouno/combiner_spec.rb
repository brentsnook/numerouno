require File.dirname(__FILE__) + '/spec_helper.rb'

describe Numerouno::Combiner do

  before { @power = 1000 }
  
  it 'only combines numbers of the correct power' do
    numbers = [2, 100, 3, 1000, 4, 1000000, 5]
    combined(numbers).should eql([2, 100, 3004, 1000000, 5])
  end
  
  describe 'multiplication' do
    
    it 'multiplies by the number on the left' do
      combined([2, 1000]).should eql([2000])
    end
    
    it "doesn't multiply when the current number is the first" do
      combined([1000, 5]).should_not eql([5000])
    end
    
    # there is no need to multiply powers of ten
    # i.e. there is no 'two ten', number like 'twenty' are already multiplied 
    it 'only multiplies when the current power is greater than ten' do
      @power = 10
      combined([5, 20]).should eql([5, 20])
    end  
  end
  
  describe 'addition' do

    it 'adds the number on the right' do
      combined([1000, 5]).should eql([1005])
    end
    
    it "doesn't add when the current number is the last" do
      combined([5, 1000]).should_not eql([1005])
    end
    
    # we don't want to add a number that is greater
    # because the current number is probably part of a multiplication
    # i.e. "twenty thousand" should produce 20,000 not 1,020
    it "doesn't add when the number is less than number to the right" do
      combined([1000, 1000000]).should_not eql([1001000])
    end  
  end

  def combined numbers
    Numerouno::Combiner.new(numbers).of_power(@power).apply!
    numbers
  end
end

describe Numerouno::CombinerMethods do
  
  include Numerouno::CombinerMethods
  
  it 'build a combiner' do
    numbers = [2, 100, 5]
    combine(numbers).of_power(100).apply!
    
    numbers.should eql([205])
  end  
end
