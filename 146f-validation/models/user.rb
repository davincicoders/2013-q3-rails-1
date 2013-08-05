class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }
end
