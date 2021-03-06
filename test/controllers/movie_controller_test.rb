require 'test_helper'

class MovieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movie_index_url
    assert_response :success
  end

  test "should get create" do
    get movie_create_url
    assert_response :success
  end

  test "should get destroy" do
    get movie_destroy_url
    assert_response :success
  end

end
