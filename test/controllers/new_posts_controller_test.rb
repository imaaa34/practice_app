require 'test_helper'

class NewPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_posts_new_url
    assert_response :success
  end

end
