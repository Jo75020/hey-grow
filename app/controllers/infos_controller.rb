class InfosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :contact]

  def create
    @info = Info.new(info_params)
    @info.save
    redirect_to :back
  end

  def contact
    @info = Info.new
    respond_to do |format|
    format.html {render or redirect_to infos_contact_path}
    format.js
  end

  end

  private

  def info_params
    params.require(:info).permit(:email, :phone, :first_name, :content, :title)
  end

end
