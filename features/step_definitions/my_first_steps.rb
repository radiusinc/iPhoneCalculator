Given /^I am on the Welcome Screen$/ do
  element_exists("view")
  sleep(STEP_PAUSE)
end

Given(/^the input "(.*?)"$/) do |expression|
    inputs = expression.split(//)
    inputs.each {|input| tap input}
end


When(/^the calculator is run$/) do
    tap "="
end


Then(/^the output should be "(.*?)"$/) do |expected_output|
    actual_output = query("label marked:'result'")[0]["text"]
    assert actual_output.eql? expected_output
end


Given(/^the table input "(.*?)"$/) do |input|
    inputs = input.split(//)
    inputs.each {|input| tap input}
end


Then(/^the output from table should be (-?\d+)$/) do |expected_output|
    actual_output = query("label marked:'result'")[0]["text"]
    assert actual_output.eql? expected_output
end