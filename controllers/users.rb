class Users < SwissCheese
  get '/' do
    must_be_admin!
    @users = User.all
    erb :'users/index'
  end

  get '/profile' do
    must_login!
    @user = current_user
    erb :'users/profile'
  end

  post '/profile' do
    user = User.where(id: current_user.id).update_all("password = '#params[:password]'")
    "saved"
  end

  post '/delete' do
    user_id = params["user_id"]
    User.delete_all(id: user_id)
  end
end
