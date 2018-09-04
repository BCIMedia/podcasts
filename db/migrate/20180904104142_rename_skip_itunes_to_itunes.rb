class RenameSkipItunesToItunes < ActiveRecord::Migration
  def up
    rename_column :podcast_episodes, :skip_itunes, :itunes
    reverse_values
  end

  def down
    reverse_values
    rename_column :podcast_episodes, :itunes, :skip_itunes
  end

  def reverse_values
    Podcast::Episode.find_each do |episode|
      episode.itunes = !episode.itunes
      episode.save!
    end
  end
end
