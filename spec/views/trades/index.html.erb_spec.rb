require 'rails_helper'

RSpec.describe "trades/index", type: :view do
  before(:each) do
    assign(:trades, [
      Trade.create!(
        :name => "Name"
      ),
      Trade.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of trades" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
