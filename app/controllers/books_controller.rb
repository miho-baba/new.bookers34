class BooksController < ApplicationController

def index
 @books = Book.all
 @book = Book.new
end

def create
  @book = Book.new(book_params)
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
end

def new
  @book = book.new
end


def destory
  books = Book.find(params[:id])
  books.destroy
  redirect_to '/users'
end

def update
end

  private
def book_params
params.require(:book).permit(:title, :body)
end

end
