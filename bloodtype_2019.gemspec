
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bloodtype_2019/version"

Gem::Specification.new do |spec|
  spec.name          = "bloodtype_2019"
  spec.version       = Bloodtype2019::VERSION
  spec.authors       = ["'tatiana.mojica'"]
  spec.email         = ["'tatiana.mojica@bustle.com'"]

  spec.summary       = %q{CLI to suggest meals based on your blood type}
  spec.description   = %q{CLI to suggest meals based on your blood type}
  spec.homepage      = "https://github.com/tatscru/bloodtype_2019"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.executables   = ["meal_suggestor"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
end
