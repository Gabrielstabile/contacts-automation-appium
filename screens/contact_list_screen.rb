require_relative '../spec/support/base_screen.rb'

class ContactListScreen < BaseScreen
    # include RSpec::Matchers

    def click_add_new_contact_button
        # sleep 5
        find_and_click_element(id: "com.android.contacts:id/fsloating_action_button_container")
        sleep 10
    end
end