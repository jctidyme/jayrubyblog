class PostCommentsController < InheritedResources::Base



    def create
    	@post_comment = PostComment.new(post_comment_params)
    	if @post_comment.save
    		flash[:notice] = "Comment was left successfully"
    		redirect_to(@post_comment.post)
    	else
    		flash[:notice] = "Comment was not created", (@post_comment.errors)
    		redirect_to(@post_comment.post)
        end
    end

    private
        def post_comment_params
            params.require(:post_comment).permit(:name, :email, :body, :post_id, :created_at)
        end

end
