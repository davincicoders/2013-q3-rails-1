class MainController < ApplicationController
  def index
    @blog_posts = BlogPost.order("written_at desc").all
  end
end
