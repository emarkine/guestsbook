require 'rails_helper'

RSpec.describe "derivatives/edit", type: :view do
  before(:each) do
    @derivative = assign(:derivative, Derivative.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit derivative form" do
    render

    assert_select "form[action=?][method=?]", derivative_path(@derivative), "post" do

      assert_select "input#derivative_name[name=?]", "derivative[name]"
    end
  end
end
