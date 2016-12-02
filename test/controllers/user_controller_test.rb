require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get destory" do
    get :destory
    assert_response :success
  end

end
