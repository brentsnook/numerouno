When /^'(.*)' is parsed$/ do |string|
  @string = string
end

Then /^the number will be (.*)$/ do |parsed_number|
  @string.parse_number.should == parsed_number.gsub(',', '').to_i
end

Then /^an error will be raised stating that no number was found$/ do
  lambda { 
    @string.parse_number 
  }.should raise_error( 
    Numerouno::NoNumberFoundError, 
    "No number found in string: #{@string}" 
  ) 
end
