module ProductsHelper

  def show_price(product)
    if !product.promotional_price.present?
      html = ""
      html += "de <span style='text-decoration:line-through;'>#{number_to_currency(product.price)}</span>" if !product.price.blank?
      html += " por <span class='promotional_price'>#{number_to_currency(product.promotional_price)}</span>"
    else
      (!product.price.blank?) ? "#{number_to_currency(product.price)}" : "a consultar"
    end
  end

end
