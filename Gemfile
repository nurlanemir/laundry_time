source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '~> 2.4.0'
gem 'devise'
gem 'rails', '~> 5.0', '>= 5.0.6'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'simple_calendar', '~> 2.0'
gem 'acts_as_bookable', '~> 0.1.4'
gem 'jquery-rails'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
gem 'bootstrap', '~> 4.0.0.alpha6'

group :development, :test do
  gem 'pry-byebug'
  gem 'coveralls', require: false
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'rspec-timecop'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
