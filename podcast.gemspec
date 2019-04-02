$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "podcast/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "podcast"
  s.version     = Podcast::VERSION
  s.authors     = ["Michael Smith"]
  s.email       = ["msmith@bcimedia.com"]
  s.summary     = %q{Storing and delivering podcasts}
  s.description = %q{Gem for uploading podcast and related data and delivering that content to views within an existing app.}
  s.homepage    = "https://github.com/BCIMedia/podcasts"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.11"
  s.add_dependency "mysql2", "~> 0.4.10"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "webmock"
end
