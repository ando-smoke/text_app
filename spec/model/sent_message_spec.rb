require 'rails_helper'

describe SentMessage, vcr: true do
  it { should validate_presence_of :to }
  it { should belong_to :contact }
  it { should belong_to :message }

  it "doesn't save the message if twilio gives an error" do
    sent_message = FactoryGirl.build(:sent_message, to: '1111111')
    sent_message.save.should be false
  end

  it 'adds an error if the to number is invalid' do
    sent_message = FactoryGirl.build(:sent_message, to: '1111111')
    sent_message.save
    sent_message.errors.messages[:base].should eq ["The 'To' number 1111111 is not a valid phone number."]
  end

  it "should display the contact's first and last name if a message has" \
  " a contact" do
    sent_message = FactoryGirl.create(:sent_message)
    contact = sent_message.contact
    expect(sent_message.display_recipient).to eq(contact.first_name + ' ' + contact.last_name)
  end

end
