class BooksController < ApplicationController
  def index
    @books = Book.order("number").all
    render :index and return
  end
  def show
    @book = Book.find(params[:id])
    render :show and return
  end
end
