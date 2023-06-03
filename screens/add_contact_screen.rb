require_relative '../spec/support/base_screen.rb'

class AddContactScreen < BaseScreen

    def fill_personal_information
        verify_and_dismiss_google_backup_alert()
        fill_first_and_last_name()
    end

    def save_contact
        find_and_click_element(id: "com.android.contacts:id/editor_menu_save_button")
    end

    def validate_contact_saved
        validate_element_displayed_xpath(id: "com.android.contacts:id/title_gradient")
    end

end