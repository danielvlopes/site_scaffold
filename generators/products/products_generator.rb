class ProductsGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      # Controller
      m.directory "app/controllers/admin" unless File.directory? "app/controllers/admin"
      m.file "controllers/products_controller.rb", "app/controllers/products_controller.rb"
      m.file "controllers/admin/product_categories_controller.rb", "app/controllers/admin/product_categories_controller.rb"
      m.file "controllers/admin/products_controller.rb", "app/controllers/admin/products_controller.rb"

      # Models
      m.file "models/product.rb", "app/models/product.rb"
      m.file "models/product_category.rb", "app/models/product_category.rb"
      m.file "models/product_image.rb", "app/models/product_image.rb"

      # Tests
      m.directory "test/functional/admin" unless File.directory? "test/functional/admin"
      m.file "test/functional/product_categories_controller_test.rb", "test/functional/product_categories_controller_test.rb"
      m.file "test/functional/products_controller_test.rb", "test/functional/products_controller_test.rb"
      m.file "test/functional/admin/product_categories_controller_test.rb", "test/functional/admin/product_categories_controller_test.rb"
      m.file "test/functional/admin/products_controller_test.rb", "test/functional/admin/products_controller_test.rb"
      m.file "test/unit/product_category_test.rb", "test/unit/product_category_test.rb"
      m.file "test/unit/product_image_test.rb", "test/unit/product_image_test.rb"
      m.file "test/unit/product_test.rb", "test/unit/product_test.rb"
      m.file "test/fixtures/product_categories.yml", "test/fixtures/product_categories.yml"
      m.file "test/fixtures/product_images.yml", "test/fixtures/product_images.yml"
      m.file "test/fixtures/products.yml", "test/fixtures/products.yml"

      # Views
      m.directory "app/views/admin/product_categories" unless File.directory? "app/views/admin/product_categories"
      m.directory "app/views/admin/products" unless File.directory? "app/views/admin/products"
      m.directory "app/views/products"
      # products views
      m.file "views/admin/products/_image.html.erb", "app/views/admin/products/_image.html.erb"
      m.file "views/admin/products/edit.html.erb", "app/views/admin/products/edit.html.erb"
      m.file "views/admin/products/index.html.erb", "app/views/admin/products/index.html.erb"
      m.file "views/admin/products/new.html.erb", "app/views/admin/products/new.html.erb"
      m.file "views/admin/products/show.html.erb", "app/views/admin/products/show.html.erb"
      m.file "views/products/index.html.erb", "app/views/products/index.html.erb"
      m.file "views/products/show.html.erb", "app/views/products/show.html.erb"
			# products categories views
      m.file "views/admin/product_categories/edit.html.erb", "app/views/admin/product_categories/edit.html.erb"
      m.file "views/admin/product_categories/index.html.erb", "app/views/admin/product_categories/index.html.erb"
      m.file "views/admin/product_categories/new.html.erb", "app/views/admin/product_categories/new.html.erb"

			# Helpers
			m.directory "app/helpers/admin"
      m.file "helpers/admin/products_helper.rb", "app/helpers/admin/products_helper.rb"
      m.file "helpers/products_helper.rb", "app/helpers/products_helper.rb"

			# Migrations
      m.migration_template "migrate/create_product_categories.rb", "db/migrate", :migration_file_name => "create_product_categories"
      m.migration_template "migrate/create_product_images.rb", "db/migrate", :migration_file_name => "create_product_images"
      m.migration_template "migrate/create_products.rb", "db/migrate", :migration_file_name => "create_products"

      # Assets
			m.file "public/stylesheets/products.css", "public/stylesheets/products.css"

      m.after_generate "create_product_categories","create_product_images","create_products"
      m.readme "INSTALL"
    end
  end

end
