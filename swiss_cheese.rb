class SwissCheese < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/assets'
  enable :logging
  enable :sessions
  attr_accessor :current_user

  not_found do
    'not found'
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def must_login!
    halt 401, erb(:unauthorized)  unless @current_user
  end

  get '/' do
    erb :"home"
  end
end
