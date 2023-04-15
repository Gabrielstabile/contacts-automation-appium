require_relative '../spec_helper.rb'
require_relative '../../spec/support/apis/get_user_api.rb'
require_all 'screens'

describe 'adding contacts' do

    before(:each) do
        @contact_list_screen = ContactListScreen.new
        @add_contact_screen = AddContactScreen.new
    end

    it 'add a new valid contact' do
        RandomUserApi.new.get_user_info_rest_client
        @contact_list_screen.click_add_new_contact_button
        @add_contact_screen.fill_personal_information
    end

end