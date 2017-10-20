require 'rails_helper'

RSpec.describe "trades/show", type: :view do
  before(:each) do
    @trade = assign(:trade, Trade.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
