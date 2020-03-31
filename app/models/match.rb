class Match < ApplicationRecord
  belongs_to :item, class_name: "Item"
  belongs_to :other_item, class_name: "Item"
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"
end
