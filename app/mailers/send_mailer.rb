class SendMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def sends_send(sends, emails, current_user_email)
    @log = []

    @log.push(Time.now.to_s + ' :: send mails log for user: ' + current_user_email)
    @log.push('')

    sends.each do |send|
      emails.each do |email|
        @send = send
        @email = email

        if mail(to: email.email, subject: send.subject)
          @log.push(Time.now.to_s + ' :: OK :: send unit with id: ' + send.id.to_s + ' :: sent to: ' + email.email)
        else
          @log.push(Time.now.to_s + ' :: ERROR :: send unit with id: ' + send.id.to_s + ' :: NOT sent to: ' + email.email)
        end
      end  
      
      @log.push('')
    end  
    puts @log
    #attachments['castle.jpg'] = File.read('public/castle.jpg')
  end  
end
