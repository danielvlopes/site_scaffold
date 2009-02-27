class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :product_category_id
      t.decimal :price, :precision => 10, :scale => 2
      t.decimal :promotional_price, :precision => 10, :scale => 2
      t.string :short_description
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
