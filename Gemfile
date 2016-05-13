source 'https://rubygems.org'
ruby '2.3.1'

gemspec

gem 'middleman', github: 'middleman/middleman',
                 branch: 'feature/pipeline'

group :test do
  gem 'rake',  '~> 11.1'
  gem 'rspec', '~> 3.4.0'

  gem 'pry-byebug'
  gem 'rack-test', '~> 0.6'

  # gherkins
  gem 'cucumber', '~> 2.0'
  gem 'capybara', '~> 2.5'
  gem 'aruba',    '~> 0.7.4'
end
