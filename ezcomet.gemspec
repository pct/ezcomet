# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ezcomet/version'

Gem::Specification.new do |gem|
  gem.name          = "ezcomet"
  gem.version       = Ezcomet::VERSION
  gem.authors       = ["Jin-Sih Lin"]
  gem.email         = ["linpct@gmail.com"]
  gem.description   = %q{EZComet is the best realtime web message pushing solution. And this is ezcomet ruby sdk.}
  gem.summary       = %q{Ezcomet Ruby SDK}
  gem.homepage      = "https://github.com/pct/ezcomet"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
