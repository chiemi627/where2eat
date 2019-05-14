require 'test_helper'

class EateriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eateries_index_url
    assert_response :success
  end

  test "should get show" do
    get eateries_show_url
    assert_response :success
  end

  test "should get new" do
    get eateries_new_url
    assert_response :success
  end

  test "should get edit" do
    get eateries_edit_url
    assert_response :success
  end

end
