class RecommendedHotel < ActiveRecord::Base
  has_and_belongs_to_many :venues, join_table: "recommended_hotels_venues"
end
