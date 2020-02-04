module CA_Framework
    def citizens_advice
        CitizensAdvice.new
    end
    def google_search
        GoogleSearch.new
    end
    def wait
        Selenium::WebDriver::Wait.new(:timeout => 15)
    end
end