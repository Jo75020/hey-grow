class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @info = Info.new
  end



  private

  def user_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
