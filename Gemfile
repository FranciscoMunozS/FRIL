source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.4'

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5.0', '>= 5.0.1'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap', '~> 4.0.0.beta'
gem 'simple_form', '~> 3.5'
gem 'haml', '~> 5.0', '>= 5.0.3'
gem 'devise', '~> 4.3'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'bootstrap-datepicker-rails', '~> 1.7', '>= 1.7.1.1'
gem 'auto_increment', '~> 1.4', '>= 1.4.1'
gem 'carrierwave', '~> 1.1'
gem 'cocoon', '~> 1.2', '>= 1.2.10'
gem 'rails-bootstrap-tabs', '~> 0.2.0'
gem 'rails_admin', '~> 1.2'
gem 'rails_admin_material'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
