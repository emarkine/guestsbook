require 'rails_helper'

RSpec.describe "trades/new", type: :view do
  before(:each) do
    assign(:trade, Trade.new(
      :name => "MyString"
    ))
  end

  it "renders new trade form" do
    render

    assert_select "form[action=?][method=?]", trades_path, "post" do

      assert_select "input#trade_name[name=?]", "trade[name]"
    end
  end
end
