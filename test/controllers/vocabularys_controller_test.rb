require 'test_helper'

class VocabularysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vocabularys_index_url
    assert_response :success
  end

end
