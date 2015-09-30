require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  test "it disallows unauthenticated users" do
    get "new"
    assert_redirected_to root_path
  end
end
