class Product < ActiveRecord::Base
	belongs_to :product_category
	has_many :product_images, :dependent=>:destroy
  
  validates_presence_of :name, :message => "Nome do produto deve ser preenchido"
  validates_presence_of :product_category_id, :message => "Categoria deve ser escolhida"
  validates_presence_of :product_images, :message => "Ao menos uma imagem deve ser selecionada"
	validates_associated :product_images  
  validates_length_of :short_description, :maximum => 30, :message => "breve descri&ccedil;&atilde;o deve ser menor que %d"  
  
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
