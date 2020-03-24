class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  validates :name, presence: true
  validates :brand, presence: true
  validates :description, presence: true
  # validates :description, presence: true
  # validates :gender, presence: true, inclusion {in: CATEGORIES/GENDER}
end
