module Podcast
  class Series < ActiveRecord::Base
    self.table_name = "podcast_series"

    has_many :episodes, -> { order(id: :desc) }

    has_attached_file :image
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    enum itunes_type: { episodic: 0, serial: 1 }

  end
end
