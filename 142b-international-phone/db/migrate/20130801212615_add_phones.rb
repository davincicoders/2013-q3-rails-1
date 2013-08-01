class AddPhones < ActiveRecord::Migration
  def up
    create_table :phones do |t|
      # example: 123-456-7890
      t.string :number

      # US for United States
      # CA for Canada
      # AU for Australia
      # IN for India
      t.string :country_code, length: 2

      # W for Work
      # C for Cellular
      # H for Home
      t.string :phone_type, length: 1

      t.boolean :has_voice_mail
    end
  end

  def down
    drop_table :phones
  end
end
