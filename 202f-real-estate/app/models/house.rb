class House < ActiveRecord::Base
  validates :address, presence: true
  validates :price,   presence: true
end
