class UsersController < ApplicationController
  def index
    if params[:public_uid]   
       user = User.find_by(public_uid: params[:public_uid]) 
       redirect_to user_path(user)
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @registration = Registration.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    if current_user.update(user_params)
      redirect_to  user_path(@user[:id])
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password__confirmation, :name_reading, :email, :address, :phone_number, :datetime, :blood_type_id, :body_weight, :height, :body_temperature, :allergy_id, :chronic_condition_id, :venue_id)
  end
end
