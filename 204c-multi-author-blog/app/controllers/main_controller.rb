class MainController < ApplicationController
  def index
    @blog_posts = BlogPost.order("written_at desc").all
  end

  def edit
    id = params[:id]
    @post = BlogPost.find(id)
    @title = "Edit post ##{@post.id}"
    render :edit and return
  end

  def edit_post
    id                = params[:id]
    @post             = BlogPost.find(id)
    @post.written_at  = params[:written_at]
    @post.body        = params[:body]
    @post.author_name = params[:author_name]

    if @post.save == true
      redirect_to "/" and return
    else
      @title = "Edit post ##{@post.id}"
      render :edit and return
    end
  end

  def new
    @post = BlogPost.new
    @title = "Write new post"
    render :new and return
  end

  def new_post
    @post             = BlogPost.new
    @post.written_at  = params[:written_at]
    @post.body        = params[:body]
    @post.author_name = params[:author_name]

    if @post.save == true
      redirect_to "/" and return
    else
      @title = "Write new post"
      render :new and return
    end
  end

  def logout
    session.clear
    redirect_to "/" and return
  end
end
