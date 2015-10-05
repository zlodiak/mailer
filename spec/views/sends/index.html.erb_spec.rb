require 'rails_helper'

RSpec.describe "sends/index", type: :view do
  before(:each) do
    assign(:sends, [
      Send.create!(
        :message => "MyText"
      ),
      Send.create!(
        :message => "MyText"
      )
    ])
  end

  it "renders a list of sends" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
