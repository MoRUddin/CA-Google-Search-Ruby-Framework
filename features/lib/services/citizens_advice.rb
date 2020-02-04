
class CitizensAdvice
  include Capybara::DSL

    def visit_citizens_advice
      visit("https://www.citizensadvice.org.uk/")
    end
    def get_header_list
      find("nav#main-nav").find_all("li.top-item.js-mega-menu")
    end
    def find_region_options
      find("div.home-extent-popup__options")
    end
    def fill_search_field search_query
      find("#main-header__search__input").send_keys(search_query, :enter)
    end
    def validate_search_results wait,expected_result
      wait.until{find("ul.search-results").visible?}
      
      begin
        find("ul.search-results").find("a", text:expected_result).visible?
      rescue
        return false
      end
      find("ul.search-results").find("a", text:expected_result).visible?
    end
end
