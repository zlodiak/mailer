class EmailsController < InheritedResources::Base

  private

    def email_params
      params.require(:email).permit()
    end
end

