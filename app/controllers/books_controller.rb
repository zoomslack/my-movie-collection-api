class BooksController < ApplicationController

  def index
    books = Book.all
    render json: {status: 200, books: books}
  end

  def show
    book = Book.find(params[:id])
    render json: {status: 200, book: book}
  end

  def create
    #user = User.find_by(name: book_params[:user_id])
    book = Book.new(book_params)

    #book.user_id = user_id if user
    puts(book_params)

    if book.save
      render json: {status: 200, book:book}
    else
      render json: {status: 422, book: book}
    end
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    render json: {status: 200, book: book}
  end

  def destroy
    book = Book.destroy(params[:id])
    render json: {status: 204}
  end

  private
  def book_params
    params.required(:book).permit(
      :title,
      :author,
      :publisher
    )
  end
end






