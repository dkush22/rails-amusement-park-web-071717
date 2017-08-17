class UsersController < ApplicationController
before_action :require_logged_in, only: [:show]
def index
	@users = User.all
end

def new
	@user = User.new
end


def create
	@user = User.create(user_params)
	session[:user_id] = @user.id
	redirect_to user_path(@user)
end

def show

	@user = User.find(params[:id])
	
end

def edit
	@user = User.find(params[:id])
end

def update
	@user = User.find(params[:id])
end

def destroy
	@user = User.find(params[:id])
	@user.delete
end


private




def user_params

params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)

end





end
