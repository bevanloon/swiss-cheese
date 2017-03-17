class Users < SwissCheese
  get '/' do
    must_login!
    @users = User.all
    erb :'users/index'
  end
end
