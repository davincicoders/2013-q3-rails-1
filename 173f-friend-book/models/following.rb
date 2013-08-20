class Following < ActiveRecord::Base
  belongs_to :from_person, class_name: "Person"
  belongs_to :to_person,   class_name: "Person"

  validate :from_person_id, presence: true
  validate :to_person_id,   presence: true
end
