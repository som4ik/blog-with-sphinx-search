class UserMailer < ApplicationMailer
default from: 'somar_melhem5@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def new_post_email(post,user)
  	@post = post
  	@user = user
  	@url = post_url(@post)
  	mail(to: user.email, subject: 'Post added ')
  end
end
