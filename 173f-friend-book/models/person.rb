class Person < ActiveRecord::Base
  has_many :followings_from_me,
    class_name: "Following", foreign_key: "from_person_id"
  has_many :followings_to_me,
    class_name: "Following", foreign_key: "to_person_id"

  validate :name,   presence: true, uniqueness: true

  has_secure_password
end
