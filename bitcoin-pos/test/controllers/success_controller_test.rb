require 'test_helper'

class SuccessControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
