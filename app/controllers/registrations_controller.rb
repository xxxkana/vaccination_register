class RegistrationsController < ApplicationController
  def index
    @registration = Registration.create(registration_params)
    if @registration.save
      redirect_to root_path
  end  

  def create
      
  end

  private
  def registration_params
    params.require(:registration).permit(:user_id, :public_uid_id).merge(user_id: current_user.id)
  end
end
