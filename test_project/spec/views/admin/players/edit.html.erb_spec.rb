require 'rails_helper'

RSpec.describe "admin/players/edit", type: :view do
  before(:each) do
    @admin_player = assign(:admin_player, Admin::Player.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit admin_player form" do
    render

    assert_select "form[action=?][method=?]", admin_player_path(@admin_player), "post" do

      assert_select "input[name=?]", "admin_player[first_name]"

      assert_select "input[name=?]", "admin_player[last_name]"
    end
  end
end
