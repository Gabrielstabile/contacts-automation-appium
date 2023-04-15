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
            sleep 5
            find_element(element).displayed?
            puts "element displayed, continuing the actions"
            find_and_click_element(id: "com.android.contacts:id/left_button")
        rescue
            puts "element not displayed, continuing the actions"
        end
    end

    def fill_first_and_last_name
        first_and_last_name_fields = find_elements(class: 'android.widget.EditText')
        first_and_last_name_fields[0].send_keys $first_name
        first_and_last_name_fields[1].send_keys $last_name
    end
end