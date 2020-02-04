Before do
    @google_search = google_search
end

Given("I am on the Google Homepage") do
    @google_search.visit_google  
end

When("I search Google for {string}") do |query|
    @google_search.fill_search_field query  
end
  
When("I click the {string} link") do |link_text|
    click_link link_text  
end