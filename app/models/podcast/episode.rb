module Podcast
  class Episode < ActiveRecord::Base
    self.table_name = "podcast_episodes"

    has_attached_file :image
    has_attached_file :file
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    # validates_attachment_content_type :file, content_type: /\Aaudio\/.*\z/

    belongs_to :series

  end
end
