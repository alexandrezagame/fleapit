class ChatRoomsController < ApplicationController
  def show
    # raise
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    # render template: 'views/chatrooms/show'
    authorize @chat_room
  end

  def create
    @chat_room = ChatRoom.create(name: "match")

    redirect_to @chat_room
    authorize @chat_room
  end

end

