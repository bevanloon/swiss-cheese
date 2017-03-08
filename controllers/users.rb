class Users < SwissCheese
  get '/' do
    @users = User.all
    erb :'users/index'
  end
end
