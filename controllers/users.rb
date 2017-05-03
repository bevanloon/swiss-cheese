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
    user = User.where(id: current_user.id).update_all("display_name = '#{new_name}'")
    "saved"
  end

  get '/delete' do
    user_id = params["user_id"]

    if user_id.to_i == current_user.id
      # Log the user out if they delete their own account
      session.delete(:user_id)
    end

    User.where(id: user_id).delete_all
    "deleted"
  end
end
