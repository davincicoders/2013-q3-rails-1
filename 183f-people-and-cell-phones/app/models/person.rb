class Person < ActiveRecord::Base
  belongs_to :cell_phone, class_name: "CellPhone", foreign_key: "cell_phone_id"
end
