source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "rails", "~> 6.0.1"
gem "puma", "~> 4.3"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "simple_form"
gem "webdrivers", "~> 4.0"
gem "devise"
gem "devise-i18n"
gem "rails-i18n", '~> 6.0.0'
gem "ransack", github: "activerecord-hackery/ransack"
gem "http_accept_language"
# gem 'image_processing', '~> 1.2'

gem "bootsnap", ">= 1.4.2", require: false

group :production do
  gem "pg"
end

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara"
  gem "factory_bot_rails"
  gem "faker"
  gem "pundit-matchers", "~> 1.6.0"
  gem "sqlite3", "~> 1.4"
  gem "rspec-rails", "~> 4.0.0.beta3"
  gem "rubocop-faker", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", "1.33.0", require: false
  gem "simplecov"
  gem "letter_opener"
end

group :development do
  gem "capistrano", "~> 3.11"
  gem "capistrano-rails", "~> 1.6"
  gem "capistrano-passenger", "~> 0.2.0"
  gem "capistrano-rbenv", "~> 2.1", ">= 2.1.4"

  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara-screenshot"
  gem "shoulda-matchers", "~> 3.1"
  gem "database_cleaner"
end
