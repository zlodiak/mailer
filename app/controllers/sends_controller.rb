class SendsController < InheritedResources::Base

  def send_up
    @sends = Send.where(user_id: current_user.id) 
    @emails = Email.where(user_id: current_user.id) 

    if SendMailer.sends_send(@sends, @emails).deliver_now
      flash[:success] = 'sesnds is sended successfull'
    else
      flash[:error] = 'sesnds is failed'
    end

    redirect_to user_sends_path(current_user)
  end

  private
    def send_params
      params.require(:send).permit(:message)
    end

end

