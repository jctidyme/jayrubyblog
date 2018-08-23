class ApplicationController < ActionController::Base

	helper_method :all_categories
	helper_method :all_posts
	before_action :site_search

	def all_categories
		@categories = Category.all
	end

	def all_posts
		@posts = Post.all
	end

	def site_search
		@search = Post.search(params[:search]) 
    	@search_posts = @search.result
	end


end
