Gem::Specification.new do |spec|
  spec.name           = 'direct-sdk-ruby'
  spec.version        = '1.4.0'
  spec.authors        = ['Ingenico ePayments']
  spec.email          = ['60233882+ingenico-dev-team@users.noreply.github.com']
  spec.summary        = %q{SDK to communicate with the Ingenico ePayments platform using the Ingenico Direct Server API}
  spec.description    = %q{SDK to communicate with the Ingenico ePayments platform using the Ingenico Direct Server API}
  spec.homepage       = %q{https://github.com/Ingenico/direct-sdk-ruby}
  spec.license        = 'MIT'

  # exclude hidden files like .gitignore
  spec.files          = Dir['lib/**/*'] + %w[direct-sdk-ruby.gemspec Gemfile LICENSE.txt Rakefile README.md]
  spec.executables    = spec.files.grep(%r{^bin\/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)\/})
  spec.require_paths  = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'httpclient', '~> 2.8'
  spec.add_dependency 'concurrent-ruby', '~>1.0'

  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'webmock', '~> 2.1'
  spec.add_development_dependency 'sinatra', '~> 1.4'
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  # spec.metadata['yard.run'] = 'yri'  # compiles yard doc on install
end
