class UsersController < ApplicationController
before_filter :authenticate_user!,except: [:info_stop]

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
    @user = User.find(params[:id])
    if @user[:info_stop]
       @user[:info_stop] = false 
       @user.save
       flash[:notice] = "Mail servece OFF"
    else 
       @user[:info_stop] = true
       @user.save
       flash[:notice] = "Mail servece ON"
    end
    redirect_to posts_path
  end
  
 
end
