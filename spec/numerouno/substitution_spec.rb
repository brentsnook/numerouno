require File.dirname(__FILE__) + '/spec_helper.rb'

describe Numerouno::Substitution do
  
  it 'substitutes number phrases with a single word' do
    substitution_for('my hamster has nine lives').should == 'my hamster has 9 lives'
  end

  it 'substitutes number phrases with several words' do
    substitution_for('the answer is forty two, really').should == 'the answer is 42, really'
  end
  
  it 'returns the source string when there are no matches' do
    substitution_for("I don't need no stinking numbers").should == "I don't need no stinking numbers"
  end
  
  it 'returns the source string for a string that consists only of a numeral' do
    substitution_for('42').should == '42'
  end
  
  it "doesn't get confused by similar looking numbers" do
    substitution_for('I have seven hundred and seventy seven apricots').should == 'I have 777 apricots'
  end
  
  it 'substitutes upper case number phrases' do
    substitution_for('my hamster has NINE lives').should == 'my hamster has 9 lives'
  end
    
  def substitution_for string
    Numerouno::Substitution.new(string).sub
  end
  
end