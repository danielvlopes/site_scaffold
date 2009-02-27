module Admin::ProductsHelper

  def add_image_field(name)
    link_to_function name do |page|
      page.insert_html :bottom, :upload_images, :partial => 'image', :object => ProductImage.new
    end
  end

end
