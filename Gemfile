source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 6.0"
gem "turbo-rails"
gem "stimulus-rails"
gem "bootsnap", require: false
gem "devise"
gem "view_component"
gem "pundit"
gem "meta-tags"
gem "image_processing", ">= 1.2"
gem "lograge"
gem "postmark-rails"
gem "aws-sdk-s3", require: false
gem "sentry-ruby"
gem "sentry-rails"
gem "jsbundling-rails"
gem "cssbundling-rails"
gem "redcarpet"
gem "rouge"
gem "sidekiq"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "dotenv-rails"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
