When /^'(.*)' is parsed$/ do |string|
  @string = string
  @stimulus = lambda { string.as_number }
end

When /^'(.*)' is substituted$/ do |string|
  pending
  @stimulus = lambda { string.as_number }
end

Then /^the number will be (.*)$/ do |parsed_number|
  @stimulus.call.should == parsed_number.gsub(',', '').to_i
end

Then /^an error will be raised stating that no number was found$/ do
  @stimulus.should raise_error( 
    Numerouno::NoNumberFoundError, 
    "No number found in string: #{@string}" 
  ) 
end
