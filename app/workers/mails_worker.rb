class MailsWorker 
	include Sidekiq::Worker
	sidekiq_options retry: false
	def perform(post_id,user_id)
		@user = User.find(user_id)
		@post = Post.find(post_id)
     	UserMailer.new_post_email(@post,@user).deliver

	end

	
end