require 'test_helper'

class BoadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boads_index_url
    assert_response :success
  end

end
