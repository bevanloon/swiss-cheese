class SwissCheese < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/assets'
  get '/' do
    'Swiss cheese'
  end
end
