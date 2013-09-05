class Author < ActiveRecord::Base
  has_secure_password

  validates :full_name, presence: true, uniqueness: true
end
