module Podcast
  class Series < ActiveRecord::Base
    self.table_name = "podcast_series"

    has_many :episodes, -> { order(id: :desc) }

    enum itunes_type: { episodic: 0, serial: 1 }

  end
end
