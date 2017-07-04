class InfosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @info = Info.new(info_params)
    @info.save
    redirect_to :back
  end


  private

  def info_params
    params.require(:info).permit(:email, :phone, :first_name, :content)
  end

end
