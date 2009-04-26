When /^'(.*)' is parsed$/ do |string|
  @number = string.parse_i
end

Then /^the number will be (.*)$/ do |parsed_number|
  @number.should == parsed_number.to_i
end