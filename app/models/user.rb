class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, uniqueness: true
  validates :username, presence: true
  has_one_attached :avatar
  has_many :items
  has_many :messages, dependent: :destroy
end
