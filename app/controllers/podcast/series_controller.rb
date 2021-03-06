module Podcast
  class SeriesController < ::AdminController
    before_action :set_series, only: [:show, :edit, :update, :destroy]

    # GET /series
    def index
      @series = Series.all
    end

    # GET /series/1
    def show
    end

    # GET /series/new
    def new
      @series = Series.new
    end

    # GET /series/1/edit
    def edit
    end

    # POST /series
    def create
      @series = Series.new(series_params)

      if @series.save
        redirect_to podcast_series_path(@series), notice: 'Series was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /series/1
    def update
      if @series.update(series_params)
        redirect_to podcast_series_path(@series), notice: 'Series was successfully updated.'
      else
        render :index
      end
    end

    # DELETE /series/1
    def destroy
      @series.destroy
      redirect_to series_url, notice: 'Series was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_series
        @series = Series.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def series_params
        params.require(:podcast_series).permit(:name, :description, :image, :subtitle, :summary, :category, :owner, :page_link, :itunes_link, :spotify_link, :itunes_type, :complete, :explicit)
      end
  end
end
