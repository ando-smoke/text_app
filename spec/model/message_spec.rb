require 'rails_helper'

describe Message, vcr: true do
  it { should validate_presence_of :body }
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }
  it { should belong_to :contact }

  it "doesn't save the message if twilio gives an error" do
    message = FactoryGirl.build(:message, to: '1111111')
    message.save.should be false
  end

  it 'adds an error if the to number is invalid' do
    message = FactoryGirl.build(:message, to: '1111111')
    message.save
    message.errors.messages[:base].should eq ["The 'To' number 1111111 is not a valid phone number."]
  end

  it "should display the contact's first and last name if a message has" \
    " a contact" do
    contact = FactoryGirl.create(:contact)
    message = FactoryGirl.create(:message, contact_id: contact.id)
    expect(message.display_sender).to eq(contact.first_name + ' ' + contact.last_name)
  end
end
