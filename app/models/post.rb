class Post < ApplicationRecord
	belongs_to :category, optional: false
end
