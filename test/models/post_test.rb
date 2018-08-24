require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "If title is there" do 
		post = Post.new(:title => "Some Title")
		assert post.valid? 
	end
end
