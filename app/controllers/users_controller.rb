class UsersController < ApplicationController

def index
end

def show
 @user = Book.find(params[:id])
 @book = @user.books
 params.require(:book).permit(:title, :body, :image)
end

def edit

end

end
