class AddUsersToMatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :user1, foreign_key: { to_table: :users }
    add_reference :matches, :user2, foreign_key: { to_table: :users }
  end
end
