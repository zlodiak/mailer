class SendsController < InheritedResources::Base

  def send_up
    @sends = Email.where(user_id: current_user.id) 
  end

  private
    def send_params
      params.require(:send).permit(:message)
    end
end

