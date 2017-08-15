require 'test_helper'

class BitliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bitlies_index_url
    assert_response :success
  end

end
