class Venue < ActiveRecord::Base
  has_and_belongs_to_many :recommended_hotels,
    join_table: "recommended_hotels_venues"
  has_many :events
end
