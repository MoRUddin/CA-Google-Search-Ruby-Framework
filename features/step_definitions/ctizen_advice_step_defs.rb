Before do
    @citizen_advice = citizen_advice
end

  Then("I am redirected to the Citizen Advice hompepage") do
    expect(current_url).to eq "https://www.citizensadvice.org.uk/"  
  end
  
  Then("the amount of items in the main navigation header is {int}") do |header_length|    
    expect(@citizen_advice.get_header_list.length).to eq header_length  
  end