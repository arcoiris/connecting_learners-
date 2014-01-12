class NotificationsController < ApplicationController


	def create
		if user_signed_in? 
			@user = current_user.id
			@listing = params[:listing_id]
			@notification = Notification.create(user_id: @user, listing_id: @listing)
			redirect_to listing_path(@listing)
		else 
			redirect_to new_user_session_path, alert: "Only logged in users can connect with other users"
		end
	end
end
