class UsersController < ApplicationController
before_filter :authenticate_user!

  def index
    @users = User.all 
  end
  def show 
    @user = User.find(params[:id])
  end

  def update 
  	@user = current_user.id
  	params[:user][:category_ids] ||= []
  	if @user.update(user_params)
  		flash[:success] = "Profile updated."
  		redirect_to @user
  	else 
  		render 'edit'
  	end
  end 
  def info_stop
    @user = current_user
    if @user[:info_stop]
      @user[:info_stop] = false 
      @user.save
      flash[:notice] = "Mail servece OFF"
    else 
      @user[:info_stop] = true
      @user.save
      flash[:notice] = "Mail servece ON"
    end
    redirect_to user_path(current_user[:id])
  end
  
  
private
def sign_up_params
  params.require(:user).permit( :username,:email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache )


end
def account_update_params
params.require(:user).permit( :username,:email, :password, :password_confirmation, :current_password,{category_ids:[]}, :avatar, :avatar_cache,:info_stop )
end
end
