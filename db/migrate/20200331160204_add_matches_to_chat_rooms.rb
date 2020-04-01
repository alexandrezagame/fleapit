class AddMatchesToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :references, :matches
  end
end
