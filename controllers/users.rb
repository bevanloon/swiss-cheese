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
    new_name = params['display_name']
    #user = User.where(id: current_user.id).update_all("display_name = '#{new_name}'")
    user = User.update(current_user.id, display_name: new_name)
    "saved"
  end

  post '/delete' do
    user_id = params["user_id"]
    User.delete_all(id: user_id)
  end
end
