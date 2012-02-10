$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_update_trackable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_update_trackable"
  s.version     = ActsAsUpdateTrackable::VERSION
  s.authors     = ["Jason Shaw"]
  s.email       = ["jasonshaw+github@gmail.com"]
  # s.homepage    = "TODO"
  s.summary     = "Summary of ActsAsUpdateTrackable."
  s.description = "Description of ActsAsUpdateTrackable."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
end
