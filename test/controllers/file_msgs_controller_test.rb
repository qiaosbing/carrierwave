require 'test_helper'

class FileMsgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_msg = file_msgs(:one)
  end

  test "should get index" do
    get file_msgs_url
    assert_response :success
  end

  test "should get new" do
    get new_file_msg_url
    assert_response :success
  end

  test "should create file_msg" do
    assert_difference('FileMsg.count') do
      post file_msgs_url, params: { file_msg: {  } }
    end

    assert_redirected_to file_msg_url(FileMsg.last)
  end

  test "should show file_msg" do
    get file_msg_url(@file_msg)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_msg_url(@file_msg)
    assert_response :success
  end

  test "should update file_msg" do
    patch file_msg_url(@file_msg), params: { file_msg: {  } }
    assert_redirected_to file_msg_url(@file_msg)
  end

  test "should destroy file_msg" do
    assert_difference('FileMsg.count', -1) do
      delete file_msg_url(@file_msg)
    end

    assert_redirected_to file_msgs_url
  end
end
