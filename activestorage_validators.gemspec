lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activestorage_validators/version'

Gem::Specification.new do |spec|
  spec.name          = 'activestorage_validators'
  spec.version       = ActivestorageValidators::VERSION
  spec.authors       = ['Vladimir Glusic']
  spec.email         = ['exsemt@gmail.com']

  spec.summary       = 'ActiveStorageValidators'
  spec.description   = 'Add ActiveStorage validators to ActiveModel/ActiveRecord.'
  spec.homepage      = 'https://github.com/exsemt/activestorage_validators'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', '>= 5.0'
  spec.add_dependency 'activestorage', '>= 5.2'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
