class ContactController < ApplicationController

  def send_contact
   begin
      @contact_form = ContactForm.new(params[:name], params[:email], params[:message])
      if @contact_form.valid?
        ContactMailer.deliver_send_contact(params)
        flash[:notice] = "Sua mensagem foi enviada com sucesso"
        redirect_to contact_path
      else
        flash[:warning] = 'Todos os campos devem ser preenchido corretamente.'
        redirect_to contact_path
      end
    rescue Net::SMTPFatalError => e
       flash[:warning] = "O email que você utilizou não existe."
       redirect_to contact_path
    rescue
       flash[:warning] = "Não foi possível enviar sua mensagem. Tente novamente mais tarde."
       redirect_to contact_path
    end
  end

end