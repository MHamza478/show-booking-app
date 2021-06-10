require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shows_index_url
    assert_response :success
  end

  test "should get create" do
    get shows_create_url
    assert_response :success
  end

  test "should get destroy" do
    get shows_destroy_url
    assert_response :success
  end

end
