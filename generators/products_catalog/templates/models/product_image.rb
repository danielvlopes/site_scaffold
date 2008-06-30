class ProductImage < ActiveRecord::Base
	belongs_to :product
	has_attachment :content_type => :image, 
	               :storage => :file_system, 
	               :max_size => 500.kilobytes,
	               :resize_to => '640x480>',
	               :processor => 'Rmagick',
	               :thumbnails => { :thumb => '70x50>' },
	               :path_prefix => "public/images/upload/products"
	validates_as_attachment	

	attr_accessor :should_destroy # atributo virtual	
	def should_destroy? # retorna verdadeiro se atributo virtual for true
		should_destroy.to_i == 1
  end
 
	
end
