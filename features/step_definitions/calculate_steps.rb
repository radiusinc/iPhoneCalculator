Given /^I am on the Welcome Screen$/ do
  element_exists("view")
  sleep(STEP_PAUSE)
end

Given(/^the input "(.*?)"$/) do |expression|
    # so it is split into an array of components
    inputs = expression.split(//)
    
    # then each array component is tapped
    inputs.each {|input| tap_mark input }
end


When(/^the calculator is run$/) do
    tap_mark "="
end


Then(/^the output should be "(.*?)"$/) do |expected_output|
    # here we find all the labels with accessibility label "result",
    # get the first (and only) result label that is returned
    result_label = query("label marked:'result'")[0]
    
    # get the text value of the result label
    actual_output = result_label["text"]
    
    # compare the expected output (4 in this case)
    # with the text in the result label
    actual_output.should eq expected_output
end


Given(/^the table input "(.*?)"$/) do |input|
    inputs = input.split(//)
    inputs.each {|input| tap_mark input}
end

# note that the regular expression now matches
# a positive or negative digit specifically
Then(/^the output from table should be (-?\d+)$/) do |expected_output|
    # here we find all the labels with accessibility label "result",
    # get the first (and only) result label that is returned
    result_label = query("label marked:'result'")[0]
    
    # get the text value of the result label
    actual_output = result_label["text"]
    
    # compare the expected output (4 in this case)
    # with the text in the result label
    actual_output.should eq expected_output
end