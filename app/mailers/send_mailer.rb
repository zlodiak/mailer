class SendMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def sends_send(sends, emails)
    sends.each do |send|
      emails.each do |email|
        @send = send
        @email = email

        p '-------------------'
        if mail(to: email.email, subject: 'subscribe')
          p 'OK: ' + email.email + ' :: ' + send.id.to_s
        else
          p 'FAIL: ' + email.email + ' :: ' + send.id.to_s
        end
      end  
    end  

    #attachments['castle.jpg'] = File.read('public/castle.jpg')
    
  end  
end
