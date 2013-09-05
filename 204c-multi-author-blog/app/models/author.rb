class Author < ActiveRecord::Base
  has_many :blog_posts, class_name: "BlogPost", foreign_key: "author_id"

  validates :full_name, presence: true, uniqueness: true
end
