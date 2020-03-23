class Item < ApplicationRecord
  belongs_to :user
  # has_many_attached :pictures

  validates :name, presence: true
  validates :description, presence: true
  # validates :description, presence: true
  # validates :gender, presence: true, inclusion {in: CATEGORIES/GENDER}
end
