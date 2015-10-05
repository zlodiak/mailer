class SendsController < InheritedResources::Base

  private

    def send_params
      params.require(:send).permit(:message)
    end
end

