class Author < ActiveRecord::Base
  has_many :recipes
end
