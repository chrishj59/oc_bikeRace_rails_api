require 'test_helper'

class BikeImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bike_image = bike_images(:one)
  end

  test "should get index" do
    get bike_images_url, as: :json
    assert_response :success
  end

  test "should create bike_image" do
    assert_difference('BikeImage.count') do
      post bike_images_url, params: { bike_image: { description: @bike_image.description, owner_name: @bike_image.owner_name, photo_url: @bike_image.photo_url, ref: @bike_image.ref, taken: @bike_image.taken, title: @bike_image.title, uploaded: @bike_image.uploaded } }, as: :json
    end

    assert_response 201
  end

  test "should show bike_image" do
    get bike_image_url(@bike_image), as: :json
    assert_response :success
  end

  test "should update bike_image" do
    patch bike_image_url(@bike_image), params: { bike_image: { description: @bike_image.description, owner_name: @bike_image.owner_name, photo_url: @bike_image.photo_url, ref: @bike_image.ref, taken: @bike_image.taken, title: @bike_image.title, uploaded: @bike_image.uploaded } }, as: :json
    assert_response 200
  end

  test "should destroy bike_image" do
    assert_difference('BikeImage.count', -1) do
      delete bike_image_url(@bike_image), as: :json
    end

    assert_response 204
  end
end
