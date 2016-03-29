require 'test_helper'

class SpeedtestsControllerTest < ActionController::TestCase
  setup do
    @speedtest = speedtests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speedtests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speedtest" do
    assert_difference('Speedtest.count') do
      post :create, speedtest: { download: @speedtest.download, ping: @speedtest.ping, ssid: @speedtest.ssid, upload: @speedtest.upload }
    end

    assert_redirected_to speedtest_path(assigns(:speedtest))
  end

  test "should show speedtest" do
    get :show, id: @speedtest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speedtest
    assert_response :success
  end

  test "should update speedtest" do
    patch :update, id: @speedtest, speedtest: { download: @speedtest.download, ping: @speedtest.ping, ssid: @speedtest.ssid, upload: @speedtest.upload }
    assert_redirected_to speedtest_path(assigns(:speedtest))
  end

  test "should destroy speedtest" do
    assert_difference('Speedtest.count', -1) do
      delete :destroy, id: @speedtest
    end

    assert_redirected_to speedtests_path
  end
end
