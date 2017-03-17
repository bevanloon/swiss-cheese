class Users < SwissCheese
  get '/' do
    must_be_admin!
    @users = User.all
    erb :'users/index'
  end
end
