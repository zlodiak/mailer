class SendMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def sends_send(sends, emails, current_user_email)
    sends_for_resend = []

    logger.debug '--------------------------------------------------------------------'
    logger.debug 'send log for ' + current_user_email + ' :: started at ' + Time.now.to_s

    sends.each do |send|
      emails.each do |email|
        @send = send
        @email = email

        if send.id == 9
          email.email = nil
        end

        if mail(to: email.email, subject: send.subject)
          logger.debug 'OK: ' + email.email + ' :: ' + send.id.to_s + ' :: ' + Time.now.to_s
        else
          logger.debug 'FAIL: ' + email.email + ' :: ' + send.id.to_s + ' :: ' + Time.now.to_s
          sends_for_resend.push(send.id)
        end
      end  
    end  

    p '============================'
    p sends_for_resend
    #attachments['castle.jpg'] = File.read('public/castle.jpg')
    
  end  
end
