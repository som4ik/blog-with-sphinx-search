class UsersController < ApplicationController
before_filter :authenticate_user!
include Com::Commentable
  def index
    @users = current_user
  end
  def update 
  	@user = current_user.id
  	params[:product][:category_ids] ||= []
  	if @user.update(user_params)
  		flash[:success] = "Profile updated."
  		redirect_to @user
  	else 
  		render 'edit'
  	end
  end 
  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
private
def sign_up_params
  params.require(:user).permit( :username,:email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache )


end
def account_update_params
params.require(:user).permit( :username,:email, :password, :password_confirmation, :current_password,{category_ids:[]}, :avatar, :avatar_cache )
end
end
