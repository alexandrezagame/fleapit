class AddNameToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :name, :string
  end
end
