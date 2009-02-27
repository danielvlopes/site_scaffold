class Post < ActiveRecord::Base
  has_many :images, :class_name=>"PostImage", :dependent=>:destroy
  validates_presence_of :author, :title, :body

  after_update :save_images

  #setter para atributo virtual images_attributes
  def images_attributes=(image_attributes)
    image_attributes.each { |attributes| images.build(attributes) }
  end

  #setter para atributo virtual update_images
  def update_images=(image_attributes)
    image_attributes.each do |attributes|
      post = images.detect {|n| n.id == attributes[:id].to_i}
      post.attributes = attributes
    end
  end

  #after save check if image should be deleted
  def save_images
    images.each { |n| n.should_destroy? ? n.destroy : n.save(false) }
  end

end
