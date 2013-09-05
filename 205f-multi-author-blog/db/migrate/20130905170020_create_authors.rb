class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :full_name
      t.string :username
      t.string :password_digest
      t.string :portrait_filename

      t.timestamps
    end
  end
end
