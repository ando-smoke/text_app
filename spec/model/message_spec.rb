require 'rails_helper'

describe Message do
  it { should validate_presence_of :body }
  it { should validate_presence_of :from }
  it { should have_many :contacts }
  it { should have_many :sent_messages }
  it { should accept_nested_attributes_for :sent_messages }
end
