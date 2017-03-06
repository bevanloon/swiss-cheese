ENV['RACK_ENV'] = 'test'

require "minitest/autorun"
require "rack/test"
require_relative "../environment"
require_relative "../swiss_cheese"
require_relative "../models/user"

ActiveRecord::Migration.maintain_test_schema!

#Rake::Task["db:setup"].invoke

class SwissCheeseTest < Minitest::Test
  include Rack::Test::Methods
  def app
   SwissCheese 
  end
end
