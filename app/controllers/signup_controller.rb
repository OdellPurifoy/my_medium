class SignupController < ApplicationController
  def create
    user = User.find(user_params)
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end
end
