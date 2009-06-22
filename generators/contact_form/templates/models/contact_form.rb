class ContactForm
  include Validatable

  attr_accessor :name, :email, :message
  validates_presence_of :name, :email, :message
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

  def initialize(name="",email="",message="")
    @name,@email,@message = name,email,message
  end
end