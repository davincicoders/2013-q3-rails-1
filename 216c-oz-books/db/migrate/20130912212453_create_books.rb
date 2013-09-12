class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :number
      t.string :title
      t.integer :year
      t.string :publisher
      t.text :summary
      t.string :cover_filename

      t.timestamps
    end
  end
end
