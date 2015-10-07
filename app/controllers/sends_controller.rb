class SendsController < InheritedResources::Base
  before_filter :authenticate_user! 
  before_filter :owner_check, only: [:show, :edit, :update, :destroy, :create, :index, :new]

  def index
    if current_user
      @sends = Send.where(user_id: current_user.id) 
      @user = current_user
    else
      @sends = []
    end
  end  

  def send_up
    @sends = Send.where(user_id: current_user.id) 
    @emails = Email.where(user_id: current_user.id) 

    log_construct

    @log
  end

  def create
    @send = current_user.sends.build(send_params)

    if @send.save
      flash[:success] = 'send saved'
      redirect_to user_sends_path(current_user)
    else
      flash.now[:error] = 'send not saved'
      render 'new'
    end
  end

  def update
    update!{ user_send_path(current_user, params[:id]) }
  end

  private
    def send_params
      params.require(:send).permit(:message, :subject, :image)
    end

    def log_construct
      @log = []

      @log.push(Time.now.to_s + ' :: send mails log for user: ' + current_user.email)

      @sends.each do |send|
        @emails.each do |email|
          if SendMailer.sends_send(send, email).deliver_now
            @log.push(Time.now.to_s + ' :: OK :: send unit with id: ' + send.id.to_s + ' :: sent to: ' + email.email)
          else
            @log.push(Time.now.to_s + ' :: ERROR :: send unit with id: ' + send.id.to_s + ' :: NOT sent to: ' + email.email)
          end
        end  
      end  
    end
end

