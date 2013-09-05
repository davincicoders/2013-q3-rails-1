class BlogPost < ActiveRecord::Base
  validates :written_at,  presence: true
  validates :body,        presence: true
  validates :author_name, presence: true
end
