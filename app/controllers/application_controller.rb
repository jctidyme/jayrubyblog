class ApplicationController < ActionController::Base

	helper_method :all_categories

	def all_categories
		@categories = Category.all
	end
end
