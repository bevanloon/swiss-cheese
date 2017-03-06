class SwissCheese < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/assets'
  enable :logging
  enable :sessions
  attr_accessor :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  get '/' do
    erb :"home"
  end
end
