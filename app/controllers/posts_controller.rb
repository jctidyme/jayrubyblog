class PostsController < ApplicationController
    def index
       @posts = Post.all.order("created_at DESC")
       @categories = Category.all
       # @truncated_title = @post.truncate(@post.title, :length 30)
    end
    
    def show
        @post = Post.find(params[:id])
        @post_comment = PostComment.new(:post => @post)
        @post_comments = @post.post_comments
    end
    
    def new
        @post = Post.new
        @category = Category.all
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, :notice => "Your post was saved"
        else
            render "new"
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(post_params)
            redirect_to post_path, :notice => "Your post was updated"
        else
            render "edit"
        end     
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, :notice => "Your post was deleted"
    end
    
    private
    
    def post_params
        params.require(:post).permit(:title, :body, :category_id, :author_id, :name)
    end



end
