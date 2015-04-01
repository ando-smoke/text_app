require 'rails_helper'

describe Contact, vcr: true do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :phone_number }
  it { should have_many :messages }
end
