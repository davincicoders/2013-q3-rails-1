class Employee < ActiveRecord::Base
  belongs_to :boss, class_name: "Employee", foreign_key: "boss_employee_id"
  has_many :reports, class_name: "Employee", foreign_key: "boss_employee_id"
end
