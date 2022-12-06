class BaseScreen < Appium::Driver
    include RSpec::Matchers

    def find_and_click_element(element)
        find_element(element).click
    end

    def send_keys_element(element, text)
        find_element(element).send_keys(text)
    end
end