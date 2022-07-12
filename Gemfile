source "https://rubygems.org"

gem "sinatra", "~> 1.4.7"
gem "activerecord", "~> 5.2.8"
gem "sinatra-activerecord", "~> 2.0.11"
gem 'rake'
gem 'racksh'
gem 'bcrypt'
gem 'rerun'

group :production do
  gem "pg", "~> 0.20.0"
end

group :development, :test do
  gem "sqlite3", "~> 1.3.12"
end

group :test do
  gem 'rack-test'
end
