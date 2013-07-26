class InitialSchema < ActiveRecord::Migration
  def up
    create_table :colors do |t|
      t.string :name
      t.string :html_color_code
    end

    create_table :vehicles do |t|
      t.string :name
      t.string :image_filename
    end
  end

  def down
    drop_table :colors
    drop_table :vehicles
  end
end
