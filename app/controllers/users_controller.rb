class UsersController < ApplicationController
	before_action :authenticate_user!

	def new
		@user = User.new
	end


	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to '/users/sign_up'
		end
	end


	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
	
end
