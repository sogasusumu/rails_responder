$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_responder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rails_responder"
  spec.version     = RailsResponder::VERSION
  spec.authors     = ["曽我進"]
  spec.email       = ["soga@yocto-inc.com"]
  spec.homepage    = "https://github.com/sogasusumu/rails_responder.git"
  spec.summary     = ""
  spec.description = ""
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency 'contracts'

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'rspec-rails'
  # https://github.com/colszowka/simplecov
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-rails"
end
