require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe EmailsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Email. As you add validations to Email, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      email: Faker::Internet.email,
      description: Faker::Lorem.paragraph(7),
      user_id: 1
    }
  }

  let(:invalid_attributes) {
    {
      email: '12',
      description: "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development."
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmailsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    login_user

    it "assigns all emails as @emails" do
      #@user = FactoryGirl.create(:user) 
      
      #visit new_user_session_path
      #fill_in "user_email", :with => @user.email
      #fill_in "user_password", :with => "qwertyui"
      #click_button "commitSignIn"  
      #binding.pry
      email = Email.create! valid_attributes
      get :index, {}, valid_session

      #email = FactoryGirl.create(:email, user_id: @user.id.to_i) 
      #binding.pry
      #visit user_emails_path(@user)
      expect(assigns(:emails)).to eq([email])
      #expect(assigns(@user)).to eq(@user)
    end
  end
=begin
  describe "GET #show" do
    it "assigns the requested email as @email" do
      email = Email.create! valid_attributes
      get :show, {:id => email.to_param}, valid_session
      expect(assigns(:email)).to eq(email)
    end
  end

  describe "GET #new" do
    it "assigns a new email as @email" do
      get :new, {}, valid_session
      expect(assigns(:email)).to be_a_new(Email)
    end
  end


  describe "GET #edit" do
    it "assigns the requested email as @email" do
      email = Email.create! valid_attributes
      get :edit, {:id => email.to_param}, valid_session
      expect(assigns(:email)).to eq(email)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Email" do
        expect {
          post :create, {:email => valid_attributes}, valid_session
        }.to change(Email, :count).by(1)
      end

      it "assigns a newly created email as @email" do
        post :create, {:email => valid_attributes}, valid_session
        expect(assigns(:email)).to be_a(Email)
        expect(assigns(:email)).to be_persisted
      end

      it "redirects to the created email" do
        post :create, {:email => valid_attributes}, valid_session
        expect(response).to redirect_to(Email.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved email as @email" do
        post :create, {:email => invalid_attributes}, valid_session
        expect(assigns(:email)).to be_a_new(Email)
      end

      it "re-renders the 'new' template" do
        post :create, {:email => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => new_attributes}, valid_session
        email.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested email as @email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => valid_attributes}, valid_session
        expect(assigns(:email)).to eq(email)
      end

      it "redirects to the email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => valid_attributes}, valid_session
        expect(response).to redirect_to(email)
      end
    end

    context "with invalid params" do
      it "assigns the email as @email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => invalid_attributes}, valid_session
        expect(assigns(:email)).to eq(email)
      end

      it "re-renders the 'edit' template" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested email" do
      email = Email.create! valid_attributes
      expect {
        delete :destroy, {:id => email.to_param}, valid_session
      }.to change(Email, :count).by(-1)
    end

    it "redirects to the emails list" do
      email = Email.create! valid_attributes
      delete :destroy, {:id => email.to_param}, valid_session
      expect(response).to redirect_to(emails_url)
    end
  end
=end

end
