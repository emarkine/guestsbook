require 'rails_helper'

RSpec.describe "derivatives/show", type: :view do
  before(:each) do
    @derivative = assign(:derivative, Derivative.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
