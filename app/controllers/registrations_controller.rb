class HomeController < ApplicationController
  def index
    @user = User.new
    
  end  

  def show

  end
     
  def create
     @registration.save
     redirect_to root_path, notice: 'メッセージが送信されました'
  
  end

  #private
  #def registration_params
    #params.require(:registration).permit(:public_uid_id)
  #end
end
