class RegistrationsController < ApplicationController
  def index
    @user = User.new
    
  end  

  def show

  end
     
  def create
     @user = User.find_by(id: params[:id])
     @registration = Registration.new(registration_params)
     @registration.save
     redirect_to home_path
  
  end

  private
  
  def registration_params
    params.require(:registration).permit(:user_id)
  end
end
