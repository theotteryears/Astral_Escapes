class Booking < ApplicationRecord
  belongs_to :visitor, class_name: 'User'
  belongs_to :planet
  has_many :reviews, dependant: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
end
