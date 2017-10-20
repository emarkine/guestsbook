require 'rails_helper'

RSpec.describe "derivatives/index", type: :view do
  before(:each) do
    assign(:derivatives, [
      Derivative.create!(
        :name => "Name"
      ),
      Derivative.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of derivatives" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
