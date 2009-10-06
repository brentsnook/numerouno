require File.dirname(__FILE__) + '/spec_helper.rb'

describe Numerouno::Substitution do
  
  it 'handles single word number phrases' do
    substitution_for('seven subtract two is five').should == '7 subtract 2 is 5'
  end

  it 'handles multiple word number phrases' do
    pending
    substitution_for('the answer is forty two').should == 'the answer is 42'
  end
    
  def substitution_for string
    Numerouno::Substitution.new(string).sub
  end
  
end