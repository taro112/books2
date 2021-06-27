class BooksController < ApplicationController
  # def new
  #     @book = BooksImage.new
  # end

  def create
      @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save!
    redirect_to book_path(@current_user.id)
  end

  def index
      @book = current_user
      @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    
  end

  def destroy
  end
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
