class UsersController < ApplicationController
	def show
		@user = User.find params[:id]
		@recent_listings = @user.listings.all
	end
end
