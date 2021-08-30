class HomeController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @registration = Registration.new
  end

end
