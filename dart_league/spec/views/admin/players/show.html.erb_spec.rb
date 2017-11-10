require 'rails_helper'

RSpec.describe "admin/players/show", type: :view do
  before(:each) do
    @admin_player = assign(:admin_player, Admin::Player.create!(
      :first_name => "First Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
  end
end
