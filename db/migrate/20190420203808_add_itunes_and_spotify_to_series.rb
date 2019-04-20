class AddItunesAndSpotifyToSeries < ActiveRecord::Migration
  def change
    add_column :podcast_series, :itunes_link, :string, after: :page_link
    add_column :podcast_series, :spotify_link, :string, after: :itunes_link
  end
end
