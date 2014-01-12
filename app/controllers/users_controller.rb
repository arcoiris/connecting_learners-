class UsersController < ApplicationController
	def show
		@user = User.find params[:id]
		@recent_listings = @user.listings.all
	end

	def create 
		# @user = User.new(params[:user])
		# 	respond_to do |format|
		# 		if @user.save
		# 			# Tell the User Mailer to send a welcome Email after save
		# 			# Edited UserMailer::welcome_email from UserMailer.welcome_email
		# 			UserMailer::welcome_email(@user).deliver

		# 			format.html { redirect_to(@user, notice: 'User was successful')}
		# 			format.json { render json: @user, status: :created, location @user }
		# 		else 
		# 			format.html { render action: 'new' }
		# 			format.json { render json: @user.errors, status: :unprocessable_entity }
				# end
			# end
	end
end
