require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  test "it disallows unauthenticated users" do
    get "new"
    assert_redirected_to root_path
  end

  test "it gets every route with index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routes)
  end

  test "it gets a specific route with show" do
    get :show, id: 1
    assert_response :success
    assert_not_nil assigns(:route)
  end

  test "it gets a blank route with new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:route)
  end
end
