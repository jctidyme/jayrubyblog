class Post < ApplicationRecord
	belongs_to :category, optional: false
	belongs_to :admin_user, optional: false

end

