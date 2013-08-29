class Place < ActiveRecord::Base
  has_many :trails_from_here, class_name: "Trail", foreign_key: "from_place_id"
  has_many :trails_to_here,   class_name: "Trail", foreign_key: "to_place_id"
  has_many :places_from_here, class_name: "Place", through: :trails_from_here,
    source: :to
  has_many :places_to_here,   class_name: "Place", through: :trails_to_here,
    source: :from
end
