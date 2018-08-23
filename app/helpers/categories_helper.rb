module CategoriesHelper
	def formatted_date(date)
		return if date.nil?
		date.strftime("%b %d. %y")
	end
end
