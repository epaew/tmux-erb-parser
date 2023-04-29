# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tmux-erb-parser/version'

Gem::Specification.new do |spec|
  spec.name                  = 'tmux-erb-parser'
  spec.version               = TmuxERBParser::VERSION
  spec.required_ruby_version = '>= 2.7.0'
  spec.requirements          = %w[bash tmux]

  spec.authors     = ['epaew']
  spec.email       = ['epaew.333@gmail.com']
  spec.summary     = 'A Tmux plugin for loading tmux.conf written in Ruby (eRuby) notation.'
  spec.description = spec.summary
  spec.homepage    = 'https://github.com/epaew/tmux-erb-parser'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files bin/tmux-erb-parser erb-parser.tmux lib *.md LICENSE`.split("\n")
  end
  spec.bindir        = 'bin'
  spec.executables   = ['tmux-erb-parser'] # written in ruby only.
  spec.require_paths = ['lib']
end
