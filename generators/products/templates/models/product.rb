class Product < ActiveRecord::Base
	belongs_to :product_category
  has_many :images, :class_name => "ProductImage", :dependent=>:destroy

  validates_presence_of :name, :product_category, :images
	validates_associated :product_category
	validates_associated :images
  validates_length_of :short_description, :maximum => 30

  after_update :save_images

  def images_attributes=(image_attributes)
     image_attributes.each do |attributes|
       images.build(attributes)
     end
  end

  def update_images=(image_attributes)
     image_attributes.each do |attributes|
        product = images.detect {|n| n.id == attributes[:id].to_i}
        product.attributes = attributes
     end
  end

  #after save check if image should be deleted
  def save_images
    images.each { |n| (n.should_destroy?) ? n.destroy : n.save(false)	}
  end

end