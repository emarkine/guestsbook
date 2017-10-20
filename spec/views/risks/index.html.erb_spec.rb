require 'rails_helper'

RSpec.describe "risks/index", type: :view do
  before(:each) do
    assign(:risks, [
      Risk.create!(
        :name => "Name"
      ),
      Risk.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of risks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
