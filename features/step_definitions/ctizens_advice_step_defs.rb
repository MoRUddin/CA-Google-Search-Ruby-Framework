Before do
    @citizens_advice = citizens_advice
    @wait = wait
end

  Then("I am redirected to the Citizens Advice hompepage") do
    expect(current_url).to eq "https://www.citizensadvice.org.uk/"  
  end
  
  Then("the amount of items in the main navigation header is {int}") do |header_length|    
    expect(@citizens_advice.get_header_list.length).to eq header_length  
  end

  Given("I am on the Citizens Advice Homepage") do
    @citizens_advice.visit_citizens_advice
  end
  
  Given("I select the {string} region button") do |country|
    if @citizens_advice.find_region_options.visible?
      @citizens_advice.find_region_options.click_link country
    end
  end  
  
  When("I search Citizens Advice for {string}") do |query|
    @citizens_advice.fill_search_field query
  end
  
  Then(/^I (.*) see a link labelled (.*) in the search results$/) do |validator,expected_result|
    if validator=="will"
      validator=true
    elsif validator=="won't"
      validator=false
    end
    expect(@citizens_advice.validate_search_results wait,expected_result).to eq validator
  end