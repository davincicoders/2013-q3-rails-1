class Person < ActiveRecord::Base
  has_many :registrations
  has_many :events, through: :registrations
end
