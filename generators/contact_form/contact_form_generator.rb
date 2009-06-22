class ContactFormGenerator < Rails::Generator::Base
  def manifest
    record do |m|

      # Controller
      m.file "controllers/contact_controller.rb", "app/controllers/contact_controller.rb" , :collision => :skip

      # Models
      m.file "models/contact_form.rb", "app/models/contact_form.rb" , :collision => :skip
      m.file "models/contact_mailer.rb", "app/models/contact_mailer.rb" , :collision => :skip

      # Tests
      m.file "test/functional/contact_controller_test.rb", "test/functional/contact_controller_test.rb" , :collision => :skip
      m.file "test/unit/contact_mailer_test.rb", "test/unit/contact_mailer_test.rb" , :collision => :skip

      # Views
      m.directory "app/views/contact"
      m.directory "app/views/contact_mailer"
      m.file "views/contact/index.html.erb", "app/views/contact/index.html.erb" , :collision => :skip
      m.file "views/contact_mailer/send_contact.html.erb", "app/views/contact_mailer/send_contact.html.erb" , :collision => :skip

      # Assets
			m.file "public/stylesheets/validationEngine.jquery.css", "public/stylesheets/validationEngine.jquery.css", :collision => :skip
			m.file "public/javascripts/jquery.validationEngine-pt-BR.js", "public/javascripts/jquery.validationEngine-pt-BR.js" , :collision => :skip
			m.file "public/javascripts/jquery.validationEngine.js", "public/javascripts/jquery.validationEngine.js" , :collision => :skip

      m.readme "INSTALL"
    end
  end

end