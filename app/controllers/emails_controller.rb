class EmailsController < InheritedResources::Base
  def index
    @emails = Email.all
  end

  private
    def email_params
      params.require(:email).permit()
    end
end

