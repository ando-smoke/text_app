class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new(to: params[:to], contact_id: params[:contact_id])
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end

private
  def message_params
    params.require(:message).permit(:body, :to, :from, :contact_id)
  end
end
