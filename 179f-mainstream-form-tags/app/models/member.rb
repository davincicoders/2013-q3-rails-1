class Member < ActiveRecord::Base
  has_many :cars, class_name: "Car", foreign_key: "reserving_member_id"
end
