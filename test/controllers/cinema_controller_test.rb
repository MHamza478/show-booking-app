require 'test_helper'

class CinemaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cinema_index_url
    assert_response :success
  end

  test "should get create" do
    get cinema_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cinema_destroy_url
    assert_response :success
  end

end
