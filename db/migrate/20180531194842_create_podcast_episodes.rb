class CreatePodcastEpisodes < ActiveRecord::Migration
  def change
    create_table :podcast_episodes do |t|
      t.belongs_to :series
      t.string     :name
      t.text       :description
      t.attachment :image
      t.attachment :file

      t.timestamps null: false
    end
  end
end
