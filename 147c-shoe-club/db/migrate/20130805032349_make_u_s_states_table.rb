class MakeUSStatesTable < ActiveRecord::Migration
  def up
    create_table :u_s_states do |t|
      t.string :abbreviation
      t.string :name
    end
  end

  def down
    drop_table :u_s_states
  end
end
