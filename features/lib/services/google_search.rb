
class GoogleSearch
  include Capybara::DSL

  def visit_google
    visit("https://www.google.co.uk/")
  end
  def fill_search_field search_query
    fill_in("q", with: search_query).send_keys(:enter)
  end
end
