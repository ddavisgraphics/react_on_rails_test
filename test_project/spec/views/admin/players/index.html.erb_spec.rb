require 'rails_helper'

RSpec.describe "admin/players/index", type: :view do
  before(:each) do
    assign(:admin_players, [
      Admin::Player.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Admin::Player.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of admin/players" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
