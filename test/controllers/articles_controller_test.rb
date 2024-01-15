require "test_helper"

# articles_controller_test.rb
class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/articles'
    assert_response :success
  end
end
