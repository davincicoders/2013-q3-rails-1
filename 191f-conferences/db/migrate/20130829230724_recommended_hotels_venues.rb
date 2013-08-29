class RecommendedHotelsVenues < ActiveRecord::Migration
  def change
    create_table :recommended_hotels_venues, id: false do |t|
      t.integer :recommended_hotel_id
      t.integer :venue_id
    end
  end
end
