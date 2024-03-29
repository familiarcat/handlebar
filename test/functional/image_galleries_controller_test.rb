require 'test_helper'

class ImageGalleriesControllerTest < ActionController::TestCase
  setup do
    @image_gallery = image_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_gallery" do
    assert_difference('ImageGallery.count') do
      post :create, image_gallery: @image_gallery.attributes
    end

    assert_redirected_to image_gallery_path(assigns(:image_gallery))
  end

  test "should show image_gallery" do
    get :show, id: @image_gallery.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_gallery.to_param
    assert_response :success
  end

  test "should update image_gallery" do
    put :update, id: @image_gallery.to_param, image_gallery: @image_gallery.attributes
    assert_redirected_to image_gallery_path(assigns(:image_gallery))
  end

  test "should destroy image_gallery" do
    assert_difference('ImageGallery.count', -1) do
      delete :destroy, id: @image_gallery.to_param
    end

    assert_redirected_to image_galleries_path
  end
end
