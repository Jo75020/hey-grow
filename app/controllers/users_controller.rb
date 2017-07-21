class UsersController < ApplicationController
  before_action :set_user


  private

  def set_user
    @user = User.find(user_params)
  end

  def user_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
