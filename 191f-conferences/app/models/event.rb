class Event < ActiveRecord::Base
  belongs_to :venue
  has_many :registrations
  has_many :people, through: :registrations
end
