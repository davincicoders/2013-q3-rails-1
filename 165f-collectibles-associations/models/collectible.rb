class Collectible < ActiveRecord::Base
  belongs_to :episode
  belongs_to :category
end
