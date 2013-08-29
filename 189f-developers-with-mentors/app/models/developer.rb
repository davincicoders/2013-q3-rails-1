class Developer < ActiveRecord::Base
  has_and_belongs_to_many :mentors, join_table: "mentorships",
    class_name: "Developer", foreign_key: "mentee_developer_id",
    association_foreign_key: "mentor_developer_id"

  has_and_belongs_to_many :mentees, join_table: "mentorships",
    class_name: "Developer", foreign_key: "mentor_developer_id",
    association_foreign_key: "mentee_developer_id"
end
