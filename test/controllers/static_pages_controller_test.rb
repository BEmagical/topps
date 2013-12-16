require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

  test "should get download" do
    get :download
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

end
