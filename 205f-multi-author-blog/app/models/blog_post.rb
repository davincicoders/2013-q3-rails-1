class BlogPost < ActiveRecord::Base
  belongs_to :author, class_name: "Author", foreign_key: "author_id"

  validates :written_at, presence: true
  validates :body,       presence: true
  validates :author_id,  presence: true
end
