require 'rails_helper'

RSpec.describe "structures/show", type: :view do
  before(:each) do
    @structure = assign(:structure, Structure.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
