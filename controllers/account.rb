class Account < SwissCheese

  get '/sign-up' do
    erb :'account/sign-up'
  end

  post '/sign-up' do
    user = User.new(user_name: params['user_name'], password: params['password'])
    user = User.new(params[:user])
    if user.save
      "Your account has been created"
    else
      "There was an error, please try again"
    end
  end

  get '/sign-in' do
    erb :'account/sign-in'
  end
end
