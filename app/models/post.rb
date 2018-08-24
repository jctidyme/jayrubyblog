class Post < ApplicationRecord
	belongs_to :category, optional: false
	belongs_to :admin_user, optional: false
	has_many :post_comments, :dependent => :destroy

end

