class ForfaitsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
  def index
    @forfaits = Forfait.all
  end
end
