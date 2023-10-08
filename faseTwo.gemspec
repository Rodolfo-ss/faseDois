# frozen_string_literal: true

require_relative "lib/faseTwo/version"

Gem::Specification.new do |spec|
  spec.name = "faseTwo"
  spec.version = FaseTwo::VERSION
  spec.authors = ["Rodolfocss"]
  spec.email = ["rodolfcs@gmail.com"]

  spec.summary = "Fase dois."
  spec.description = "Gem da fase dois de algoritmos e problemas."
  spec.homepage = "https://rubygems.org/gems/faseTwo"
  spec.required_ruby_version = ">= 2.6.0"
  gem "spec.add_development_dependency \\\"rspec\\\", \\\"~> 3.2\\\""
  spec.license = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
