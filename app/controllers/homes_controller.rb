class HomesController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @registration = Registration.new
    flash[:notice]="登録しました"
  end

end
