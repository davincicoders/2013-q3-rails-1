class LineItem < ActiveRecord::Base
  belongs_to :dish
  belongs_to :order
end
