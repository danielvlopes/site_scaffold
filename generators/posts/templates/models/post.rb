class Post < ActiveRecord::Base
  has_many :post_images, :dependent=>:destroy
  after_update :save_images  
  validates_presence_of :autor, :title, :body  

  #setter para atributo virtual images_attributes
  def images_attributes=(image_attributes)
     image_attributes.each do |attributes|     
       post_images.build(attributes)          
     end
  end
  
  #setter para atributo virtual update_images  
  def update_images=(image_attributes) 
     image_attributes.each do |attributes|        
        post = post_images.detect {|n| n.id == attributes[:id].to_i}
        post.attributes = attributes
     end
  end  
  
  #apos salvar post verifica em cada imagem se deve apagala ou atualizar
  def save_images 
    post_images.each do |n|
      if n.should_destroy?
      	n.destroy
      else
      	n.save(false)	
      end	
    end
  end
	
end
