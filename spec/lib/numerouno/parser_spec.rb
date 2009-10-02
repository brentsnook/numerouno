require File.dirname(__FILE__) + '/../../spec_helper.rb'

describe Numerouno::Parser do

  it 'will combine numbers for powers of ten up to a trillion' do
    subject.stub!(:numbers_within).and_return([0])
    combiners = [10, 100, 1000, 1000000, 1000000000, 1000000000000].collect do |power|
      combiner = mock :combine
      combiner.should_receive(:of_power).with(power).and_return combiner
      combiner.should_receive(:apply!)
      combiner
    end

    subject.stub!(:combine).exactly(6).times.and_return *combiners

    subject.number_from ''
  end

  it 'will sum all found numbers' do
    subject.stub!(:numbers_within).and_return([7000, 600])
    subject.stub!(:combine).and_return mock('combiner', :null_object => true)

    subject.number_from('seven thousand, six hundred').should be(7600)
  end

  it 'will fail when no numbers are found in string' do
    lambda {
      subject.number_from 'I contain no numbers'
    }.should raise_error(Numerouno::NoNumberFoundError)
  end
end

  describe Numerouno::Parser, 'will parse' do

  it 'the number 0' do
    subject.number_from('0').should == 0
  end  

  it 'numbers greater than 0' do
    subject.number_from('5').should == 5
  end

  it 'numbers less than 0' do
    subject.number_from('-1').should == -1
  end

  it 'numbers starting with a numeral as a literal number' do
    subject.number_from('55 hundred').should == 55
  end

  it 'numbers starting with a alphabetic character as a phrase' do
    subject.number_from('two 5').should == 2
  end
 
end