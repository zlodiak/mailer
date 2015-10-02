class EmailsController < InheritedResources::Base
  def index
    if current_user
      @emails = Email.where(user_id: current_user.id) 
    else
      @emails = []
    end
  end

  private
    def email_params
      params.require(:email).permit()
    end
end

