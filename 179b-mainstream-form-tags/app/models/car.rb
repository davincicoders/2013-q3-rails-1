class Car < ActiveRecord::Base
  belongs_to :reserving_member, class_name: "Member"
end
