class Photo < ActiveRecord::Base
  has_and_belongs_to_many :tags, join_table: "photos_tags"
end
