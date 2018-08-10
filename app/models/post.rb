class Post < ApplicationRecord
	attr_accesible :name, :body, :category_id, :author_id
	belongs_to category
end
