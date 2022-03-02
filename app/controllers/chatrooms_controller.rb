class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @museum = @chatroom.museum
    @message = Message.new
  end
end
