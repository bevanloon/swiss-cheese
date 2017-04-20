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

  def is_admin?
    current_user && current_user.admin
  end

  def must_login!
    halt 401, erb(:unauthorized)  unless current_user
  end

  def must_be_admin!
    halt 401, "You must be an admin to view this page" unless is_admin?
  end

  get '/' do
    @posts = Post.where(draft: false).limit(8)
    erb :"home"
  end
end
