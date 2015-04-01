require 'rails_helper'

describe 'the add a message process', vcr: true do
  it 'adds a new message' do
    visit messages_path
    click_on 'Send New Message'
    fill_in 'To', with: '5034756684'
    fill_in 'From', with: '5038365278'
    fill_in 'Body', with: 'hi'
    click_on 'Create Message'
    expect(page).to have_content('hi')
  end

  it 'will display an error message if body is blank' do
    visit new_message_path
    fill_in 'To', with: '5034756684'
    fill_in 'From', with: '5038365278'
    click_on 'Create Message'
    expect(page).to have_content('errors')
  end

end
