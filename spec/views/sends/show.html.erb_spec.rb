require 'rails_helper'

RSpec.describe "sends/show", type: :view do
  before(:each) do
    @send = assign(:send, Send.create!(
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
