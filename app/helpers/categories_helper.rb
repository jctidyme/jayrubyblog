module CategoriesHelper
	def formatted_date(date)
		return if date.nil?
		date.strftime("%A, %-d %B, %Y")
	end
end
