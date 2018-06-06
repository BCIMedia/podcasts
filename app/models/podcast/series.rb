module Podcast
  class Series < ActiveRecord::Base
    self.table_name = "podcast_series"

    has_many :episodes, -> { order(id: :desc) }

  end
end
