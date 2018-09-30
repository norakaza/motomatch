require 'test_helper'

class MotoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get moto_show_url
    assert_response :success
  end

  test "should get index" do
    get moto_index_url
    assert_response :success
  end

end
