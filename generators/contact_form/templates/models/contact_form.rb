class ContactForm < ActiveForm
  attr_accessor :name, :email, :message
  validates_presence_of :name, :email, :message
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
end