class Actor < ActiveRecord::Base
  has_many :castings
  has_many :plays, through: :castings
end
