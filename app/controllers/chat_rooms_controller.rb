class ChatRoomsController < ApplicationController
  def show
    # raise
    @match_chat_room_messages = ChatRoom.includes(messages: :user).find(params[:id])
    # render template: 'views/chatrooms/show'
    @match = Match.find(params[:match_id])
    authorize @match_chat_room_messages
  end

  def create
    @match_chat_room = ChatRoom.create(name: "match")

    redirect_to match_chat_room_path(match_id: params[:match_id], id: @match_chat_room)
    authorize @match_chat_room
  end

end

