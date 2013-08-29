class Person < ActiveRecord::Base
  has_many :tools, class_name: "Tool", foreign_key: "person_id"
end
