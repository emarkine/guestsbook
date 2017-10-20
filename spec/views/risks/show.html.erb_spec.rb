require 'rails_helper'

RSpec.describe "risks/show", type: :view do
  before(:each) do
    @risk = assign(:risk, Risk.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
