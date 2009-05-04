require File.dirname(__FILE__) + '/../../spec_helper.rb'

describe Numerouno::Parser do
  
  it 'should attempt to combine numbers for different powers of ten' do
    pending 'need to figure out syntax for multiple invocation stub' do
      subject.stub!(:numbers_within).and_return([0])
      combiners = [10, 100, 3, 1000, 1000000, 1000000000, 1000000000000].collect do |power|
        combiner = mock :combiner
        combiner.should_receive(:of_power).with power
      end
    
      subject.stub!(:combine).exactly(6).times.and_return combiners
    
      subject.number_from ''
    end
  end
  
  it 'should sum all found numbers' do
    subject.stub!(:numbers_within).and_return([7000, 600])
    subject.stub!(:combine).and_return mock('combiner', :null_object => true)
    
    subject.number_from('seven thousand, six hundred').should be(7600)
  end
  
  it 'should raise an error when no numbers are found in string' do
    lambda {
      subject.number_from 'I contain no numbers'
    }.should raise_error(Numerouno::NoNumberFoundError)
  end
end  