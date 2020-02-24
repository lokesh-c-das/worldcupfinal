require 'test_helper'

class WorldCupFinalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get world_cup_finals_index_url
    assert_response :success
  end

end
