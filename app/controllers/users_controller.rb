class UsersController < ApplicationController

def index
end

def show
 params.require(:book).permit(:title, :body, :image)
end


end
