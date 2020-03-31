class AddChatRoomToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :chat_room, foreign_key: true
  end
end
