class Booking < ApplicationRecord
  belongs_to :visitor_id
  belongs_to :planet_id
end
