require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list = lists(:one)
  end

  test "should get index" do
    get _lists_url
    assert_response :success
  end

  test "should get new" do
    get new__list_url
    assert_response :success
  end

  test "should create list" do
    assert_difference("List.count") do
      post _lists_url, params: { list: {  } }
    end

    assert_redirected_to _list_url(List.last)
  end

  test "should show list" do
    get _list_url(@list)
    assert_response :success
  end

  test "should get edit" do
    get edit__list_url(@list)
    assert_response :success
  end

  test "should update list" do
    patch _list_url(@list), params: { list: {  } }
    assert_redirected_to _list_url(@list)
  end

  test "should destroy list" do
    assert_difference("List.count", -1) do
      delete _list_url(@list)
    end

    assert_redirected_to _lists_url
  end
end
