class Match < ApplicationRecord
  belongs_to :item, class_name: "Item"
  belongs_to :other_item, class_name: "Item"
end
