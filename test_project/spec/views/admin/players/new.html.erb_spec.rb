require 'rails_helper'

RSpec.describe "admin/players/new", type: :view do
  before(:each) do
    assign(:admin_player, Admin::Player.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new admin_player form" do
    render

    assert_select "form[action=?][method=?]", admin_players_path, "post" do

      assert_select "input[name=?]", "admin_player[first_name]"

      assert_select "input[name=?]", "admin_player[last_name]"
    end
  end
end
