require 'rails_helper'

# describe 'the add a contact process', vcr: true do
#   it 'adds a new contact' do
#     visit messages_path
#     click_on 'Contacts'
#     click_on 'Add New Contact'
#     fill_in 'First name', with: 'Bob'
#     fill_in 'Last name', with: 'Loblaw'
#     fill_in 'Phone number', with: '5035554444'
#     click_on 'Create Contact'
#     expect(page).to have_content('Bob')
#   end
#
#   it 'gets an error when a field is blank' do
#     visit contacts_path
#     click_on 'Add New Contact'
#     fill_in 'First name', with: 'Bob'
#     fill_in 'Last name', with: ''
#     fill_in 'Phone number', with: '5035554444'
#     click_on 'Create Contact'
#     expect(page).to have_content('errors')
#   end
# end
