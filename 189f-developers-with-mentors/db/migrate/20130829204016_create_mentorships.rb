class CreateMentorships < ActiveRecord::Migration
  def change
    create_table :mentorships, id: false do |t|
      t.integer :mentor_developer_id
      t.integer :mentee_developer_id
    end
  end
end
