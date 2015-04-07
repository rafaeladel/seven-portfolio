require 'test_helper'

module SevenPortfolio
  class ItemsControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
      @item = seven_portfolio_items(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:items)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create item" do
      item_desc = "desc test"
      video_url = "http://www.video.com"
      assert_difference('Item.count') do
        post :create, item: {
            description: item_desc,
            is_featured: false,
            finished_at: Date.today,
            item_type: 1,
            item_video_attributes: {
              url: "http://www.video.com",
              description: "dwdwdwd",
              title: "video title"
            }
        }
      end

      assert_redirected_to item_path(assigns(:item))
      item = assigns(:item)
      assert_equal item.description, item_desc
      assert_equal item.item_type, 1
      assert_equal item.item_video.url, video_url
    end

    test "should show item" do
      get :show, id: @item
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @item
      assert_response :success
    end

    test "should update item" do
      patch :update, id: @item, item: {  }
      assert_redirected_to item_path(assigns(:item))
    end

    test "should destroy item" do
      assert_difference('Item.count', -1) do
        delete :destroy, id: @item
      end

      assert_redirected_to items_path
    end
  end
end
