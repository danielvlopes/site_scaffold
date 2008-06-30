module ProductsHelper
	
	def show_price(product)
		if product.promotional_price > 0
			html = "de <span style='text-decoration:line-through;'>#{product.price}</span><br/>"
			html += "por <span class='promotional_price'>#{product.promotional_price}</span>"
		else
			"<b>#{product.price}</b>"
		end
	end
	
end
