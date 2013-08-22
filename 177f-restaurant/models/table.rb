class Table < ActiveRecord::Base
  validates :number_of_chairs, presence: true
end
