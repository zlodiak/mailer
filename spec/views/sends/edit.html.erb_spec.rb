require 'rails_helper'

RSpec.describe "sends/edit", type: :view do
  before(:each) do
    @send = assign(:send, Send.create!(
      :message => "MyText"
    ))
  end

  it "renders the edit send form" do
    render

    assert_select "form[action=?][method=?]", send_path(@send), "post" do

      assert_select "textarea#send_message[name=?]", "send[message]"
    end
  end
end
