class CreatePostImages < ActiveRecord::Migration
  def self.up
    create_table :post_images do |t|
      t.references :post
      t.string     :image_file_name
      t.string     :image_content_type
      t.string     :image_file_size
      t.datetime   :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :post_images
  end
end
