class AddChatRoomToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :chatroom, :integer
  end
end
