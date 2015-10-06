class EmailsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :owner_check, only: [:show, :edit, :update, :destroy, :create, :index, :new]

  def index
    if current_user
      @emails = Email.where(user_id: current_user.id) 
      @user = current_user
    else
      @emails = []
    end
  end

  def new
    @email = Email.new
  end

  def create
    @email = current_user.emails.build(email_params)

    if @email.save
      flash[:success] = 'email saved'
      redirect_to root_path
    else
      flash.now[:error] = 'email not saved'
      render 'new'
    end
  end  

  private
    def email_params
      params.require(:email).permit(:email, :description)
    end
end

