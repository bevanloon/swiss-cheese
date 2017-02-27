class SwissCheese < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/assets'
  enable :logging
  get '/' do
    erb :"home"
  end
end
