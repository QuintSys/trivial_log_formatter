# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trivial_log_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = 'trivial_log_formatter'
  spec.version       = TrivialLogFormatter::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Erich N. Quintero']
  spec.email         = 'contact@quintsys.com'
  spec.summary       = %q{Trivial log formatter.}
  spec.description   = %q{Based on Ruby's default formatter.}
  spec.homepage      = 'https://github.com/QuintSys/trivial_log_formatter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
