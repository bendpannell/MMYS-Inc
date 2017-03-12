class ChannelsController < ApplicationController
  before_action :authenticate_user!
  
  
  def index
    @channels = Channels.all
    
  end
  
  def show
    @channel = Channels.find(params[:id])
    @messages = Message.all
  end
  
  def new
    @channel = Channels.new
  end
  
  def create
    @channel = Channels.new(channel_params)
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
