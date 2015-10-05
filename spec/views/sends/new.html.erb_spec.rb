require 'rails_helper'

RSpec.describe "sends/new", type: :view do
  before(:each) do
    assign(:send, Send.new(
      :message => "MyText"
    ))
  end

  it "renders new send form" do
    render

    assert_select "form[action=?][method=?]", sends_path, "post" do

      assert_select "textarea#send_message[name=?]", "send[message]"
    end
  end
end
