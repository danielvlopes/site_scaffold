module Admin::PostsHelper
	
  def add_image_field(name)
    link_to_function name do |page|
      page.insert_html :bottom, :upload_images, :partial => 'image', :object => PostImage.new
    end
  end

end
