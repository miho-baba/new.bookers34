class BooksController < ApplicationController

def index
 @books = Book.all
 @book = Book.new
 @user = current_user

end

def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
  if @book.save
  flash[:notice] = "Book was successfully created."
  redirect_to books_path(@book.id)
  else
     @books = Book.all
     render :index
  end
end

def show
  @book = Book.find(params[:id])
end

def edit
  @book = Book.find(params[:id])
end

def newb
  @book = book.new
end


def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to '/books'
end

def update
end

  private
def book_params
params.require(:book).permit(:title, :body)
end

end
