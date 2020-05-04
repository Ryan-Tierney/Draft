
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Draft/version"

Gem::Specification.new do |spec|
  spec.name          = "Draft"
  spec.version       = Draft::VERSION
  spec.authors       = ["'Ryan William Tierney'"]
  spec.email         = ["'ryan.tierney92@gmail.com'"]

  spec.summary       = %q{"list of names and summaries of the top 10 players in the 2020 NFL Draft"}
  spec.description   = %q{"list of names and summaries of the top 10 players in the 2020 NFL Draft"}
  spec.homepage      = "https://www.sportingnews.com/us/nfl/news/nfl-draft-prospects-2020-big-board-top-100-players/4g8v0bsp4p2n1o952wtueecs5"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://www.sportingnews.com/us/nfl/news/nfl-draft-prospects-2020-big-board-top-100-players/4g8v0bsp4p2n1o952wtueecs5"
    spec.metadata["changelog_uri"] = "https://www.sportingnews.com/us/nfl/news/nfl-draft-prospects-2020-big-board-top-100-players/4g8v0bsp4p2n1o952wtueecs5"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
