class Message < ActiveRecord::Base
  validates :body, presence: true
  validates :from, presence: true
  has_many :sent_messages
  has_many :contacts, through: :sent_messages
end
