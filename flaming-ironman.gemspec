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
  gem.add_dependency "letter_opener"
  gem.add_dependency "database_cleaner"
  gem.add_dependency "quiet_assets"
  gem.add_dependency "oj"

  # console
  gem.add_dependency "hirb"
  gem.add_dependency "wirble"
  gem.add_dependency "awesome_print"
  gem.add_dependency "interactive_editor"

  # thin (don't use webrick)
  gem.add_dependency "thin"
end
