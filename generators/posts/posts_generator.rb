class PostsGenerator < Rails::Generator::Base
  def manifest
    record do |m|

      # Controller
      m.directory "app/controllers/admin" unless File.directory? "app/controllers/admin"
      m.file "controllers/posts_controller.rb", "app/controllers/posts_controller.rb"
      m.file "controllers/admin/posts_controller.rb", "app/controllers/admin/posts_controller.rb"

      # Models
      m.file "models/post.rb", "app/models/post.rb"
      m.file "models/post_image.rb", "app/models/post_image.rb"

      # Tests
      m.directory "test/functional/admin" unless File.directory? "test/functional/admin"
      m.file "test/functional/posts_controller_test.rb", "test/functional/posts_controller_test.rb"
      m.file "test/functional/admin/posts_controller_test.rb", "test/functional/admin/posts_controller_test.rb"
      m.file "test/unit/post_image_test.rb", "test/unit/post_image_test.rb"
      m.file "test/unit/post_test.rb", "test/unit/post_test.rb"
      m.file "test/fixtures/posts.yml", "test/fixtures/posts.yml"
      m.file "test/fixtures/post_images.yml", "test/fixtures/post_images.yml"

      # Views
      m.directory "app/views/admin/posts" unless File.directory? "app/views/admin/posts"
      m.directory "app/views/posts"
      m.file "views/admin/posts/_image.html.erb", "app/views/admin/posts/_image.html.erb"
      m.file "views/admin/posts/edit.html.erb", "app/views/admin/posts/edit.html.erb"
      m.file "views/admin/posts/index.html.erb", "app/views/admin/posts/index.html.erb"
      m.file "views/admin/posts/new.html.erb", "app/views/admin/posts/new.html.erb"
      m.file "views/admin/posts/show.html.erb", "app/views/admin/posts/show.html.erb"
      m.file "views/posts/index.html.erb", "app/views/posts/index.html.erb"

      # Helpers
      m.directory "app/helpers/admin" unless File.directory? "app/helpers/admin"
      m.file "helpers/admin/posts_helper.rb", "app/helpers/admin/posts_helper.rb"

      # Migrations
      m.migration_template "migrate/create_posts.rb", "db/migrate", :migration_file_name => "create_posts"
      m.migration_template "migrate/create_post_images.rb", "db/migrate", :migration_file_name => "create_post_images"

      m.after_generate "create_posts","create_post_images"
      m.readme "INSTALL"
    end
  end

end
