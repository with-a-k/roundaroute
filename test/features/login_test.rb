require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  def setup
    Capybara.app = Roundaroute::Application
  end

  test "an new user" do
    visit root_path
    click_on "get started with twitter"
    assert_equal new_route_path, current_path
  end

  test "and logout" do
    visit root_path
    click_on "get started with twitter"
    click_on "Log out"
    assert_equal root_path, current_path
  end
end