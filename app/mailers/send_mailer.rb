class SendMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def sends_send(send, email)
    @send = send
    @email = email
            
    mail(to: email.email, subject: send.subject)
  end  
end
