module SevenPortfolio::Concerns::ItemVideosController
  extend ActiveSupport::Concern

  included do
    before_action :set_item_video, only: [:show, :edit, :update, :destroy]
  end

  # GET /item_videos
  def index
    @item_videos = ItemVideo.all
  end

  # GET /item_videos/1
  def show
  end

  # GET /item_videos/new
  def new
    @item_video = ItemVideo.new
  end

  # GET /item_videos/1/edit
  def edit
  end

  # POST /item_videos
  def create
    @item_video = ItemVideo.new(item_video_params)

    if @item_video.save
      redirect_to @item_video, notice: 'Item video was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /item_videos/1
  def update
    if @item_video.update(item_video_params)
      redirect_to @item_video, notice: 'Item video was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /item_videos/1
  def destroy
    @item_video.destroy
    redirect_to item_videos_url, notice: 'Item video was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item_video
    @item_video = ItemVideo.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def item_video_params
    params[:item_video]
  end
end