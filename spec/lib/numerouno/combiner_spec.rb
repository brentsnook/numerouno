require File.dirname(__FILE__) + '/../../spec_helper.rb'

describe Numerouno::Combiner do
  
  describe 'when combining a given number with its neighbours' do
    it 'should only process numbers of the correct power'
    it 'should attempt to multiply by the number on the left'
    it 'should attempt to add the number on the right'
  end
  
  describe 'multiplication' do
    
    it 'should be applied using number to the left'
    
    it 'should happen when the current number is not the first'
    
    # there is no need to multiply powers of ten
    # i.e. there is no 'two ten', number like 'twenty' are already multiplied 
    it 'should happen when the current power is greater than ten'
  end
  
  describe 'addition' do
    
    it 'should be applied using number to the right'
    
    it 'should happen when number is not the last'
    # we don't want to add a number that is greater
    # because the current number is probably part of a multiplication
    # i.e. "twenty thousand" should produce 20,000 not 1,020
    it 'should happen when number is greater than number to right'
  end

end
