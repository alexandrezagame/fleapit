class ChatRoomsController < ApplicationController
  def show
    # raise
    @match_chat_room_messages = ChatRoom.includes(messages: :user).find(params[:id])
    # render template: 'views/chatrooms/show'
    @match = Match.find(params[:match_id])
    authorize @match_chat_room_messages
  end

  def create
    @match = Match.find(params[:match_id])
    if @match.chatroom.nil?
      @match_chat_room = ChatRoom.create(name: "match")
      authorize @match_chat_room
      @match.chatroom = @match_chat_room.id
      @match.save!
      # authorize @match
      redirect_to match_chat_room_path(match_id: params[:match_id], id: @match_chat_room)
    else
      skip_authorization
      redirect_to match_chat_room_path(match_id: params[:match_id], id: @match.chatroom)
    end
  end

end

