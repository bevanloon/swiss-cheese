require 'rubygems'
require 'bundler'

Bundler.require

configure :development do
  set :database, 'sqlite3:db/db.sqlite'
end
