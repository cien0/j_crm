require 'test_helper'

class LoadFakturyControllerTest < ActionController::TestCase
  test "should get load_obroty" do
    get :load_obroty
    assert_response :success
  end

end
