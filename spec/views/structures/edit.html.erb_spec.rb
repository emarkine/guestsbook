require 'rails_helper'

RSpec.describe "structures/edit", type: :view do
  before(:each) do
    @structure = assign(:structure, Structure.create!())
  end

  it "renders the edit structure form" do
    render

    assert_select "form[action=?][method=?]", structure_path(@structure), "post" do
    end
  end
end
