class Order < ActiveRecord::Base
  belongs_to :table
  has_many :order_lines

  validates :table_id, presence: true
  validates :total_price, presence: true
end
