class UserMailer < ActionMailer::Base
  default from: "application.studdy@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "http://evening-meadow-9421.herokuapp.com/users/sign_in"
    mail(to: @user.email, subject: 'Welcome to Studdy')
  end

  def notifcation_email(poster, user, notification)
    @user = user
    @notification = notification 
  end
end

