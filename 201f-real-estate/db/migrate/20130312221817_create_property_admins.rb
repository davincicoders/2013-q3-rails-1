class CreatePropertyAdmins < ActiveRecord::Migration
  def change
    create_table :property_admins do |t|
      t.string :username
      t.string :password_digest
    end
  end
end
