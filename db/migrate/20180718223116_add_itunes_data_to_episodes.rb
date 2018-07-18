class AddItunesDataToEpisodes < ActiveRecord::Migration
  def change
    add_column :podcast_episodes, :subtitle, :string, after: :name
    add_column :podcast_episodes, :summary, :text, after: :subtitle
    add_column :podcast_episodes, :author, :text, after: :subtitle
    add_column :podcast_episodes, :publish_date, :datetime, after: :description
    add_column :podcast_episodes, :skip_itunes, :boolean, default: false, after: :publish_date
    add_column :podcast_episodes, :season, :integer, after: :skip_itunes
    add_column :podcast_episodes, :explicit, :boolean, default: false, after: :season
    add_attachment :podcast_episodes, :image, after: :season
  end
end
