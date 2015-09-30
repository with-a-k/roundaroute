require 'test_helper'

class CreateRouteTest < ActionDispatch::IntegrationTest
  def setup
    Capybara.app = Roundaroute::Application
  end

  test "make a route" do
    visit root_path
    click_on "get started with twitter"
    assert_equal new_route_path, current_path
    fill_in 'Name', with: "A Test Route"
    fill_in 'Origin', with: "1510 Blake Street, Denver, CO"
    fill_in 'Distance', with: "5000"
    click_on "Create Route"
    assert_equal route_path(Route.last), current_path
  end
end