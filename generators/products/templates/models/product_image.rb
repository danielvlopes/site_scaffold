class ProductImage < ActiveRecord::Base
  IMAGE_TYPE = ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png']

  belongs_to :product

  has_attached_file :image, :styles => { :medium => "300x300>", :small => "100x100>" }
  validates_attachment_presence :image
  validates_attachment_thumbnails :image
  validates_attachment_content_type :image, :content_type => ProductImage::IMAGE_TYPE
  validates_attachment_size :image, :less_than => 5.megabytes

  attr_accessor :should_destroy
  def should_destroy?
    should_destroy.to_i == 1
  end

end
