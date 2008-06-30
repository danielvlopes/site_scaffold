class ProductCategory < ActiveRecord::Base
	has_many :products, :dependent=>:delete_all
	validates_presence_of :name
end
