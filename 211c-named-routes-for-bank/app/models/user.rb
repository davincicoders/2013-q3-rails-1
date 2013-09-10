class User < ActiveRecord::Base
  has_many :accounts
  has_secure_password
end
