require 'rails_helper'

RSpec.describe "risks/new", type: :view do
  before(:each) do
    assign(:risk, Risk.new(
      :name => "MyString"
    ))
  end

  it "renders new risk form" do
    render

    assert_select "form[action=?][method=?]", risks_path, "post" do

      assert_select "input#risk_name[name=?]", "risk[name]"
    end
  end
end
