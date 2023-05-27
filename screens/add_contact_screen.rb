require_relative '../spec/support/base_screen.rb'

class AddContactScreen < BaseScreen

    def fill_personal_information
        verify_and_dismiss_google_backup_alert()
        fill_first_and_last_name()
        sleep 5
    end

end