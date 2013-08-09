class AddBooks < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :publication_year
      t.string :isbn
    end
  end

  def down
    drop_table :books
  end
end
