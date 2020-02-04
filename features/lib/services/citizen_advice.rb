
class CitizenAdvice
  include Capybara::DSL
    def get_header_list
      find("nav#main-nav").find_all("li.top-item.js-mega-menu")
    end
end
