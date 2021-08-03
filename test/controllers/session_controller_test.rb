require "test_helper"

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get omniauth" do
    get session_omniauth_url
    assert_response :success
  end
end
