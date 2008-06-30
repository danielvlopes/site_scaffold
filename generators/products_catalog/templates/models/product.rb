class Product < ActiveRecord::Base
	belongs_to :product_category
	has_many :product_images, :dependent=>:destroy
  validates_presence_of :name, :product_category_id
  after_update :save_images  	
	
  #setter for virtual atribute images_attributes
  def images_attributes=(image_attributes)
     image_attributes.each do |attributes|     
       product_images.build(attributes)          
     end
  end	

  #setter for virtual atribute update_images  
  def update_images=(image_attributes) 
     image_attributes.each do |attributes|        
        product = product_images.detect {|n| n.id == attributes[:id].to_i}
        product.attributes = attributes
     end
  end  
  
  #apos salvar post verifica em cada imagem se deve apagala ou atualizar
  def save_images 
    product_images.each do |n|
      if n.should_destroy?
      	n.destroy
      else
      	n.save(false)	
      end	
    end
  end

	
end
