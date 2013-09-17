class EmailVerification < ActiveRecord::Migration
  def up
    add_column :users, :was_email_verified, :boolean
    add_column :users, :email_verification_token, :string
  end

  def down
    remove_column :users, :was_email_verified
    remove_column :users, :email_verification_token
  end
end
