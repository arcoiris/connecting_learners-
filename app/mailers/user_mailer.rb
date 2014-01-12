class UserMailer < ActionMailer::Base
  default from: "application.studdy@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "http://evening-meadow-9421.herokuapp.com/users/sign_in"
    mail(to: @user.email, subject: 'Welcome to Studdy')
  end

  def notification_email(listing_id, user, notification)
    @user = user
    @listing = Listing.find(listing_id)
    @poster = Listing.find(listing_id).user
    @notification = notification 
    @user_profile = "http://localhost:3000/users/#{@user.id}"
    mail(to: @poster.email, subject: "A user has expressed interest in your listing")
  end
end

