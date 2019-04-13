require 'test_helper'

class SlogansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slogan = slogans(:one)
  end



  test "should create slogan" do
    assert_difference('Slogan.count') do
      post api_v1_slogans_url, params: { slogan: { email: @slogan.email,  name: @slogan.name,  suggestion: @slogan.suggestion, lastName: @slogan.lastName } }, as: :json
    end

    assert_response 201
  end






end
