class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :product_images do |t|
      t.references :product
      t.string     :image_file_name
      t.string     :image_content_type
      t.string     :image_file_size
      t.datetime     :image_updated_at
    end
  end

  def self.down
    drop_table :product_images
  end
end