class Planet < ApplicationRecord
  belongs_to :user
  has_one_attached :planet_img
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
