require_relative '../spec_helper.rb'
# require_relative '../../screens/contact_list_screen.rb'
require_relative '../../spec/support/apis/get_user_api.rb'
require_all 'screens'

describe 'adding contacts' do

    before(:each) do
        @contact_list_screen = ContactListScreen.new
    end

    it 'add a new valid contact' do
        RandomUserApi.new.get_user_info_net_http
        @contact_list_screen.click_add_new_contact_button
    end

end