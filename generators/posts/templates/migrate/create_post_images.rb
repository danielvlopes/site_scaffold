class CreatePostImages < ActiveRecord::Migration
  def self.up
    create_table :post_images do |t|
      t.references :post
      t.integer :parent_id
      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :size
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end

  def self.down
    drop_table :post_images
  end
end
