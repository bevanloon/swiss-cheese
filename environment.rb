require 'rubygems'
require 'bundler'

Bundler.require

configure :development do
  set :database, 'sqlite3:db/db.sqlite'
end

configure :test do
  set :database, 'sqlite3:db/test.sqlite'
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/db')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
