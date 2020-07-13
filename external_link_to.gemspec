# frozen_string_literal: true

$LOAD_PATH << File.expand_path('lib', __dir__)
require 'external_link_to/version'

Gem::Specification.new do |spec|
  spec.name          = 'external_link_to'
  spec.version       = ExternalLinkTo::VERSION
  spec.authors       = ['Guillaume Briday']
  spec.email         = ['guillaumebriday@gmail.com']

  spec.summary       = 'ActionView helper to easily render external links.'
  spec.description   = 'ActionView helper to easily render external links.'
  spec.homepage      = 'https://github.com/guillaumebriday/external_link_to'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/guillaumebriday/external_link_to'
  spec.metadata["changelog_uri"] = "https://github.com/guillaumebriday/external_link_to/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'actionpack'
end
