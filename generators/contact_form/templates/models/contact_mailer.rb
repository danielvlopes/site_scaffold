class ContactMailer < ActionMailer::Base

  def send_contact(fields)
    recipients 			"YOURCONTACT@YOURSITE.com.br"
    from        		fields[:email]
    subject    			"Contato"
    sent_on   			Time.now
    body						:fields => fields
    content_type 		"text/html"
  end

end
