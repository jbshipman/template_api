class PasswordsController < ApplicationController
  def forgot
    # check first if email exists, neede d because
    # though email is required to register, non-templated app
    # may allow for email to be removed by user later
    if params[:email].blank?
      return render json: { error: "Email not present" }
    end

    # find user by email
    user = User.find_by(email: params[:email])

    # if present then generate a token
    if user.present?
      user.generate_password_token!
      # SEND EMAIL TO USER
      render json: { status: "ok" }, status: :ok
    else
      render json: { error: "Email address not found. Please check and try again." }, status: :not_found
    end
  end

  def reset
    token = params[:token].to_s

    if params[:email].blank?
      return render json: { error: "Token not present" }
    end

    user = User.find_by(reset_password_token: token)

    if user.present? && user.password_token_valid?
      if user.reset_password!(params[:password])
        render json: { status: "ok" }, status: :ok
      else
        render json: { error: user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: "Link not valid or expired. Try generating a new link." }, status: :not_found
    end
  end
end
