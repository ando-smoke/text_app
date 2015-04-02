class Contact < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  has_many :sent_messages
  has_many :messages, through: :sent_messages
end
