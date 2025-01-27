require "test_helper"

class SubscribersControllerTest < ActionDispatch::IntegrationTest
  test "should create subscriber" do
    product = products(:tshirt)

    post product_subscribers_url(product), params: { subscriber: { email: "david@example.com" } }
    assert_redirected_to product
  end

  test "should delete subscriber" do
    product = products(:tshirt)
    subscriber = subscribers(:david)

    assert_difference("Subscriber.count", -1) do
      post unsubscribe_url(token: subscriber.generate_token_for(:unsubscribe))
    end
  end
end
