source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'loofah', '~> 2.2.1'
gem 'browser-timezone-rails'
gem 'bootstrap-sass', '>= 3.3.7'
gem 'bootstrap', '~> 4.0.0.alpha3'
# I have to use jquery for bootstrap:
gem 'jquery-rails'
gem 'popper_js'

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

group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters', '1.1.9'
  gem 'guard', '2.13.0'
  gem 'guard-minitest', '2.4.4'
end

group :production do

end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
