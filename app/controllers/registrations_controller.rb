class RegistrationsController < Devise::RegistrationsController

  def new
       @user = User.new(params[:user])
     if @user.save!
      redirect_to root_path
    else
      redirect_to forfaits_path
    end
  end

  private
  def user_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
