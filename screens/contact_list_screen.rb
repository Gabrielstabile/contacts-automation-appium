require_relative '../spec/support/base_screen.rb'

class ContactListScreen < BaseScreen

    def click_add_new_contact_button
        find_and_click_element(id: "com.android.contacts:id/floating_action_button_container")
    end
end