class SentMessage < ActiveRecord::Base
  belongs_to :contact
  belongs_to :message
  validates :to, presence: true

  before_create :send_message

  def display_recipient
    contact.nil? ? to : contact.first_name + ' ' + contact.last_name
  end

  private

    def send_message
      begin
        response = RestClient::Request.new(
        :method => :post,
        :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
        :user => ENV['TWILIO_ACCOUNT_SID'],
        :password => ENV['TWILIO_AUTH_TOKEN'],
        :payload => { :Body => self.message.body,
          :To => to,
          :From => self.message.from }
          ).execute
        rescue RestClient::BadRequest => error
          message = JSON.parse(error.response)['message']
          errors.add(:base, message)
          false
        end
      end
end
