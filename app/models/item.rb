class Item < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :photo

  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_address,
    against: [ :name, :description, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
