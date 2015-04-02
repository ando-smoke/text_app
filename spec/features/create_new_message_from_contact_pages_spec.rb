require 'rails_helper'

# describe 'the create new message from a contact process', vcr: true do
#   it 'will open new message page' do
#     contact = FactoryGirl.create(:contact)
#     visit contacts_path
#     click_on contact.phone_number
#     expect(page).to have_content('New Message')
#   end
#
#   it 'creates a new message for a given contact' do
#     contact = FactoryGirl.create(:contact)
#     visit contacts_path
#     click_on contact.phone_number
#     fill_in 'From', with: '+15005550006'
#     fill_in 'Body', with: 'Hi there.'
#     click_on 'Create Message'
#     expect(page).to have_content('Hi there.')
#   end
# end
