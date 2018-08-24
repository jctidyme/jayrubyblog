module PostsHelper
	def limited_text(body)
		body.split('').slice(300)
	end
end
