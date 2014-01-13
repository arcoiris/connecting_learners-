class NotificationsController < ApplicationController

# how to send a message that the message was sent?
	def create
		if user_signed_in? 
			@user = current_user
			@listing_id = params[:listing_id]
			@notification = Notification.create(user_id: @user.id, listing_id: @listing_id)
			respond_to do |format|
				if @notification.save 
					UserMailer.notification_email(@listing_id, @user, @notification).deliver
					format.html { redirect_to(listing_path(@listing_id), notice: 'Notification sent!') }
					format.json { render json: listing_path(@listing_id), status: :created, location: listing_path(@listing) }
				else
					format.html { redirect_to(listing_path(@listing_id), notice: 'There was an error in sending your notification')  }
					format.json { render json: @notification.errors, status: :unprocessable_entity }
				end
			end
		else 
			redirect_to new_user_session_path, alert: "Only logged in users can connect with other users"
		end
	end
end
