class CreateRecommendedHotels < ActiveRecord::Migration
  def change
    create_table :recommended_hotels do |t|
      t.string :name

      t.timestamps
    end
  end
end
