class Trail < ActiveRecord::Base
  belongs_to :from, class_name: "Place", foreign_key: "from_place_id"
  belongs_to :to,   class_name: "Place", foreign_key: "to_place_id"
end
