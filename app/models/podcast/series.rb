module Podcast
  class Series < ActiveRecord::Base
    self.table_name = "podcast_series"

    has_many :episodes, -> { order(id: :desc) }

    has_attached_file :image
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    enum itunes_type: { episodic: 0, serial: 1 }

    def series_url
      case name
      when "Living Sports"
        Rails.application.routes.url_helpers.living_sports_path
      when "Durango Diaries"
        Rails.application.routes.url_helpers.durango_diaries_path
      end
    end

  end
end
