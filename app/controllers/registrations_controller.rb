class RegistrationsController < ApplicationController
  def create
    # Take fontend inputs & save new record in User Model
    user = User.create!(
      username: params["user"]["username"],
      email: params["user"]["email"],
      password: params["user"]["password"],
      password_confirmation: params["user"]["password_confirmation"],
    )

    # Conditional to check user created
    # put created user into session store
    # render to frontend json object
    # send welcome email to new user
    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user,
      }
      UserMailer.welcome_email(user).deliver_now
    else
      render json: { status: 500 }
    end
  end
end
