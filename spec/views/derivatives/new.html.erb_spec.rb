require 'rails_helper'

RSpec.describe "derivatives/new", type: :view do
  before(:each) do
    assign(:derivative, Derivative.new(
      :name => "MyString"
    ))
  end

  it "renders new derivative form" do
    render

    assert_select "form[action=?][method=?]", derivatives_path, "post" do

      assert_select "input#derivative_name[name=?]", "derivative[name]"
    end
  end
end
