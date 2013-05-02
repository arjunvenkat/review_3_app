class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by_id(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:title]
    @book.author_id = params[:author_id]

    if @book.save
            redirect_to books_url
          else
      render 'new'
    end
  end

  def edit
    @book = Book.find_by_id(params[:id])
  end

  def update
    @book = Book.find_by_id(params[:id])
    @book.title = params[:title]
    @book.author_id = params[:author_id]

    if @book.save
            redirect_to books_url
          else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find_by_id(params[:id])
    @book.destroy
        redirect_to books_url
      end
end
