class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new()
    @sent_message = SentMessage.new(
      to: params[:to],
      contact_id: params[:contact_id]
    )
    @message.sent_messages << @sent_message
  end

  def create
    recipients = message_params[:to].split(/,\s*/)

    @message.new(
      from: message_params[:from],
      body: message_params[:body]
    )

    recipients.each do |recipient|
      sent_message = SentMessage.new(
        to: recipient,
        contact_id: message_params[:contact_id],
        message_id: @message.id
      )

      if sent_message.save && @message.save
        next
      else
        render :new
      end
    end

################################################

    # recipients.each do |recipient|
    #   @message = Message.new(
    #     to: recipient,
    #     from: message_params[:from],
    #     body: message_params[:body],
    #     contact_id: message_params[:contact_id]
    #   )
    #   @message.save ? next : (render :new)
    # end

    ################################################

    # @message = Message.new(message_params)
    #
    # if @message.save
    #   redirect_to messages_path
    # else
    #   render :new
    # end
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body, :contact_id)
  end
end
