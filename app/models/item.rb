class Item < ApplicationRecord
  acts_as_votable
  acts_as_voter
  belongs_to :user
  has_many_attached :pictures
  has_many :matches
  belongs_to :category

  validates :name, presence: true
  validates :brand, presence: true
  validates :description, presence: true
  validates :min_price, presence: true
  validates :max_price, presence: true
  # validates :description, presence: true
  # validates :gender, presence: true, inclusion {in: CATEGORIES/GENDER}
end
