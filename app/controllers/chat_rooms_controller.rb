class ChatRoomsController < ApplicationController
  def show
    # raise
    @chat_room = ChatRoom.find(params[:id])
    # .includes(messages: :user).find(params[:id])
  end

  def create
    @chat_room = ChatRoom.create

    redirect_to @chat_room
    authorize @chat_room
  end
end

