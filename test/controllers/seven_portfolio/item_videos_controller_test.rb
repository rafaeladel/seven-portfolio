require 'test_helper'

module SevenPortfolio
  class ItemVideosControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:item_videos)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create item_video" do
      assert_difference('ItemVideo.count') do
        post :create, item_video: {  }
      end

      assert_redirected_to item_video_path(assigns(:item_video))
    end

    test "should get edit" do
      get :edit, id: @item_video
      assert_response :success
    end

    test "should update item_video" do
      patch :update, id: @item_video, item_video: {  }
      assert_redirected_to item_video_path(assigns(:item_video))
    end

    test "should destroy item_video" do
      assert_difference('ItemVideo.count', -1) do
        delete :destroy, id: @item_video
      end

      assert_redirected_to item_videos_path
    end
  end
end
