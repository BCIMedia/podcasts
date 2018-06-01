class CreatePodcastSeries < ActiveRecord::Migration
  def change
    create_table :podcast_series do |t|
      t.string :name
      t.text   :description

      t.timestamps null: false
    end
  end
end
