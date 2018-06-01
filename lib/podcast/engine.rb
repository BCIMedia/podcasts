module Podcast
  class Engine < ::Rails::Engine
    # isolate_namespace Podcast

    rake_tasks do
      Dir[File.join(File.dirname(__FILE__), "tasks/*.rake")].each { |f| load f }
    end
  end
end
