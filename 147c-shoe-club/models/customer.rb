class Customer < ActiveRecord::Base
  validates :first_name,    length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :last_name,     length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_speed,    length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_address1, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_city,     length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_state,    length: { is: 2 }, allow_nil: true
  validates :ship_zip_code, format: { with: /\A\d{5}\z/, message: "should be 5 digits" }, allow_nil: true
  validates :bill_address1, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :bill_city,     length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :bill_state,    length: { is: 2 }, allow_nil: true
  validates :bill_zip_code, format: { with: /\A\d{5}\z/, message: "should be 5 digits" }, allow_nil: true
end
