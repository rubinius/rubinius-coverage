# coding: utf-8
require './lib/rubinius/coverage/version'

Gem::Specification.new do |spec|
  spec.name          = "rubinius-coverage"
  spec.version       = Rubinius::Coverage::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Rubinius coverage tool.}
  spec.summary       = %q{Rubinius coverage tool.}
  spec.homepage      = "https://github.com/rubinius/rubinius-coverage"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = ["ext/rubinius/coverage/extconf.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
end
