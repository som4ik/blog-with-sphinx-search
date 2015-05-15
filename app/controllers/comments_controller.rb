class CommentsController < ApplicationController

def new

    @parent_id = params.delete(:parent_id)
    @commentable = find_commentable
    @comment = Comment.new( :parent_id => @parent_id, 
                            :commentable_id => @commentable.id,
                            :commentable_type => @commentable.class.to_s)
  end
  
  def create
    # @post = Post.find(params[:id])
    @user = current_user
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
        flash[:notice] = "Comment added succsefully"
        redirect_to @commentable
    else 
         flash[:alert] = "Can`t add empty comment"
         redirect_to @commentable
    
      
    end
    
  end
 
  private
 
      def comment_params
      params.require(:comment).permit(:commenter,:content,:parent_id, :commentable_id, :commentable_type,:user_id)
    end
     def find_commentable
       params.each do |name, value|
          if name =~ /(.+)_id$/
           return $1.classify.constantize.find(value)
          end
       end
       nil
      end

end