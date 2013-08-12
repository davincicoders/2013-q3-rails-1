class Team < ActiveRecord::Base
  validates :color, presence: true, uniqueness: true
end
