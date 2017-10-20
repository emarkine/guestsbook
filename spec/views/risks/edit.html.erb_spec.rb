require 'rails_helper'

RSpec.describe "risks/edit", type: :view do
  before(:each) do
    @risk = assign(:risk, Risk.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit risk form" do
    render

    assert_select "form[action=?][method=?]", risk_path(@risk), "post" do

      assert_select "input#risk_name[name=?]", "risk[name]"
    end
  end
end
