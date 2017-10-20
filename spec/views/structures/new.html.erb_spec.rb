require 'rails_helper'

RSpec.describe "structures/new", type: :view do
  before(:each) do
    assign(:structure, Structure.new())
  end

  it "renders new structure form" do
    render

    assert_select "form[action=?][method=?]", structures_path, "post" do
    end
  end
end
