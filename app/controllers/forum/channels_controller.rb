class Forum::ChannelsController < ApplicationController
  before_action :authenticate_user!

  def index
    @channels = Forum::Channel.all
  end

  def show
    @channel = Forum::Channel.find(params[:id])
    @messages = Forum::Message.all
  end

  def new
    @channel = Forum::Channel.new
  end

  def create
    @channel = Forum::Channel.new(channel_params)
    if @channel.save
      redirect_to '/forum/channels'
    else
      render 'new'
    end
  end

  private

  def channel_params
    params.require(:topic)
  end
end
