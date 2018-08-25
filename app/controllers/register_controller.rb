class RegisterController < ApplicationController
  def index
    @roles=Role.all
  end
 
  def create
    user_params = params.require(:user).permit(:username, :password, :phone, :role_id, :email)
    unless user_params.nil?
      User.create(user_params)
    end
    redirect_to :controller => 'home', :action => 'index'
  end
end
