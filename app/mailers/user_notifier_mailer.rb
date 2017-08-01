class UserNotifierMailer < ActionMailer::Base

  default :from => 'gundr1kt@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user,
    :subject => 'Thanks for purchasing a ticket from LaunchPad Labs Theater!' )
  end
end
