class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Welcome to [app name]")
  end

  def forgot_password(user)
    @user = user
    mail(to: user.email, subject: "Forgot password for [app name]")
  end

  def password_reset(user)
    @user = user
    mail(to: user.email, subject: "Your password for [app name] has been reset")
  end
end
