module ProductsHelper

  def show_price(product)
    if !product.promotional_price.blank?
      html = ""
      html += "de <span style='text-decoration:line-through;'>#{product.price}</span>" if !product.price.blank?
      html += " por <span class='promotional_price'>#{product.promotional_price}</span>"
    else
      if !product.price.blank?
        "#{product.price}"
      else
        "a consultar"
      end
    end
  end

end
