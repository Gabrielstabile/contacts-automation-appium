class BaseScreen < Appium::Driver
    include RSpec::Matchers

    def find_and_click_element(element)
        find_element(element).click
    end

    def send_keys_element(element, text)
        find_element(element).send_keys(text)
    end

    def verify_if_element_is_displayed(element)
        begin
            find_element(element).displayed?
            puts "element displayed, continuing the actions"
        rescue
            puts "element not displayed, continuing the actions"
        end
    end

    def fill_first_and_last_name(text)
        name = text.split
        first_and_last_name_fields = find_elements(class: 'android.widget.EditText')
        first_and_last_name_fields[0].send_keys name[0]
        first_and_last_name_fields[1].send_keys name[1]
    end

    # def fill_field_by_class(element, text)
    #     find_element(class: element).send_keys(text)
    # end
end