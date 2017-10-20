require 'rails_helper'

RSpec.describe "structures/index", type: :view do
  before(:each) do
    assign(:structures, [
      Structure.create!(),
      Structure.create!()
    ])
  end

  it "renders a list of structures" do
    render
  end
end
