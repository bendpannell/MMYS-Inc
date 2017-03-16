class Forum::MessagesController < ApplicationController

  def index
    @messages = Forum::Message.all
  end

  def new
    @message = Forum::Message.new
  end

  def create
    @message = Forum::Message.new(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
