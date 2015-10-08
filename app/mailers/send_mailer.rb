class SendMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def sends_send(send, email)
    @send = send
    @email = email
    @image_name = send.image_file_name     
    #@image_path = send.image.url(:medium)  
    @image_path = Rails.root.join('/public' + send.image.url(:medium).split('?').first.to_s)    

    #mail.attachments[@image_name] = File.read(@image_path)
    mail(to: email.email, subject: send.subject)
  end  
end
