module Podcast
  class EpisodesController < ::AdminController
    before_action :set_episode, only: [:show, :edit, :update, :destroy]
    before_action :set_series, only: [:index, :new, :edit]

    # GET /episodes
    def index
      if @series
        @episodes = Episode.where(series: @series)
      else
        @episodes = Episode.all
      end
    end

    # GET /episodes/1
    def show
    end

    # GET /episodes/new
    def new
      @episode = Episode.new(series: @series)
    end

    # GET /episodes/1/edit
    def edit
    end

    # POST /episodes
    def create
      @episode = Episode.new(episode_params)

      if @episode.save
        redirect_to podcast_series_episode_path(@episode.series, @episode), notice: 'Episode was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /episodes/1
    def update
      if @episode.update(episode_params)
        redirect_to podcast_series_episode_path(@episode.series, @episode), notice: 'Episode was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /episodes/1
    def destroy
      series = @episode.series
      @episode.destroy
      redirect_to podcast_series_path(series), notice: 'Episode was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_episode
        @episode = Episode.find(params[:id])
      end

      def set_series
        @series = Series.find(params[:series_id]) if params[:series_id].to_i > 0
      end

      # Only allow a trusted parameter "white list" through.
      def episode_params
        params.require(:podcast_episode).permit(:name, :description, :image, :file, :series_id)
      end
  end
end
