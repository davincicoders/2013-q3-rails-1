class Author < ActiveRecord::Base
  has_many :blog_posts, class_name: "BlogPost", foreign_key: "author_id"

  has_secure_password

  validates :full_name, presence: true, uniqueness: true
end
