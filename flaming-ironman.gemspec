# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flaming-ironman/version'

Gem::Specification.new do |gem|
  gem.name          = "flaming-ironman"
  gem.version       = Flaming::Ironman::VERSION
  gem.authors       = ["John Griffiths"]
  gem.email         = ["john@johnantoni.com"]
  gem.description   = %q{Experiment with development gem kits}
  gem.summary       = %q{Experiment with development gem kits}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  # tools
  gem.add_development_dependency "rails3-generators"
  gem.add_development_dependency "letter_opener"
  gem.add_development_dependency "database_cleaner"
  gem.add_development_dependency "yajl-ruby"
  gem.add_development_dependency "crack"
  gem.add_development_dependency "quiet_assets"

  # guard
  #gem.add_development_dependency "guard-unicorn"
  #gem.add_development_dependency "guard-rails"
  #gem.add_development_dependency "guard-sunspot"
  #gem.add_development_dependency "guard-delayed"
  #gem.add_development_dependency "guard-bundler"
  #gem.add_development_dependency "guard-annotate"
  #gem.add_development_dependency "guard-spork"
  #gem.add_development_dependency "guard-rspec"

  # guard support
  #gem.add_development_dependency "rb-fsevent"
  #gem.add_development_dependency "rb-fchange"

  # console
  gem.add_development_dependency "hirb"
  gem.add_development_dependency "wirble"
  gem.add_development_dependency "awesome_print"
  gem.add_development_dependency "interactive_editor"
end
