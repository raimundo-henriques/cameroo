class Item < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
end
