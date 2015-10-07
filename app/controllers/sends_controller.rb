class SendsController < InheritedResources::Base
  before_filter :authenticate_user! 
  before_filter :owner_check, only: [:show, :edit, :update, :destroy, :create, :index, :new]

  def send_up
    @sends = Send.where(user_id: current_user.id) 
    @emails = Email.where(user_id: current_user.id) 

    send_mailer = SendMailer.sends_send(@sends, @emails, current_user.email)
    @log = send_mailer
    send_mailer.deliver_now
    p '-------------------'
    p @log
    @log
  end

  def update
    update!{ user_send_path(current_user, params[:id]) }
  end

  private
    def send_params
      params.require(:send).permit(:message, :subject)
    end

end

