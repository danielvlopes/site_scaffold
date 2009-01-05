class PostsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      
      # Controller
      m.file "controllers/posts_controller.rb", "app/controllers/posts_controller.rb" , :collision => :skip
      m.file "controllers/admin/posts_controller.rb", "app/controllers/admin/posts_controller.rb" , :collision => :skip

      # Models
      m.file "models/post.rb", "app/models/post.rb" , :collision => :skip
      m.file "models/post_image.rb", "app/models/post_image.rb" , :collision => :skip

      # Tests
      m.directory "test/functional/admin"            
      m.file "test/functional/posts_controller_test.rb", "test/functional/posts_controller_test.rb" , :collision => :skip
      m.file "test/functional/admin/posts_controller_test.rb", "test/functional/admin/posts_controller_test.rb" , :collision => :skip
      m.file "test/unit/post_image_test.rb", "test/unit/post_image_test.rb" , :collision => :skip
      m.file "test/unit/post_test.rb", "test/unit/post_test.rb" , :collision => :skip
      m.file "test/fixtures/posts.yml", "test/fixtures/posts.yml" , :collision => :skip
      m.file "test/fixtures/post_images.yml", "test/fixtures/post_images.yml" , :collision => :skip

      # Views
      m.directory "app/views/admin/posts"
      m.directory "app/views/posts"
      m.file "views/admin/posts/_image.html.erb", "app/views/admin/posts/_image.html.erb" , :collision => :skip
      m.file "views/admin/posts/edit.html.erb", "app/views/admin/posts/edit.html.erb" , :collision => :skip
      m.file "views/admin/posts/index.html.erb", "app/views/admin/posts/index.html.erb" , :collision => :skip
      m.file "views/admin/posts/new.html.erb", "app/views/admin/posts/new.html.erb" , :collision => :skip
      m.file "views/admin/posts/show.html.erb", "app/views/admin/posts/show.html.erb" , :collision => :skip
      m.file "views/posts/index.html.erb", "app/views/posts/index.html.erb" , :collision => :skip

			# Helpers
			m.directory "app/helpers/admin"
      m.file "helpers/admin/posts_helper.rb", "app/helpers/admin/posts_helper.rb" , :collision => :skip
      			
			# Migrations
      m.migration_template "migrate/create_posts.rb", "db/migrate", {:migration_file_name => 'create_posts'}
      m.migration_template "migrate/create_post_images.rb", "db/migrate", {:migration_file_name => 'create_post_images'}      
      
      m.readme "INSTALL"
    end
  end

end
