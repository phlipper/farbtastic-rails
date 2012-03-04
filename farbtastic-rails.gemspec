# -*- encoding: utf-8 -*-
require File.expand_path("../lib/farbtastic-rails/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Phil Cohen"]
  gem.email         = ["github@phlippers.net"]
  gem.description   = %q{Farbtastic jQuery Color Picker, colorfully bundled for Rails 3+.}
  gem.summary       = %q{Farbtastic jQuery Color Picker, colorfully bundled for Rails 3+.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "farbtastic-rails"
  gem.require_paths = ["lib"]
  gem.version       = Farbtastic::Rails::VERSION
end
