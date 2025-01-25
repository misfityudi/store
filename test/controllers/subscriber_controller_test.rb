require "test_helper"

class SubscriberControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get subscriber_create_url
    assert_response :success
  end

  test "should get set_product" do
    get subscriber_set_product_url
    assert_response :success
  end

  test "should get subscriber_params" do
    get subscriber_subscriber_params_url
    assert_response :success
  end
end
