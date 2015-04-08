require_dependency "seven_portfolio/application_controller"

module SevenPortfolio
  class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    # GET /items
    def index
      @items = Item.all
    end

    # GET /items/1
    def show
    end

    # GET /items/new
    def new
      @item = Item.new
      @item.build_item_video
      @item.build_item_gallery
    end

    # GET /items/1/edit
    def edit
    end

    # POST /items
    def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to @item, notice: 'Item was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /items/1
    def update
      if @item.update(item_params)
        redirect_to @item, notice: 'Item was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /items/1
    def destroy
      @item.destroy
      redirect_to items_url, notice: 'Item was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_item
        @item = Item.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def item_params
        params[:item].permit(:description, :finished_at, :is_featured, :item_type,
                             item_video_attributes: [:url, :description, :title],
                             item_gallery_attributes: [:title])
      end
  end
end