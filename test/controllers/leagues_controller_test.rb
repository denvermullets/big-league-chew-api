require "test_helper"

class LeaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league = leagues(:one)
  end

  test "should get index" do
    get leagues_url, as: :json
    assert_response :success
  end

  test "should create league" do
    assert_difference("League.count") do
      post leagues_url, params: { league: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show league" do
    get league_url(@league), as: :json
    assert_response :success
  end

  test "should update league" do
    patch league_url(@league), params: { league: {  } }, as: :json
    assert_response :success
  end

  test "should destroy league" do
    assert_difference("League.count", -1) do
      delete league_url(@league), as: :json
    end

    assert_response :no_content
  end
end
