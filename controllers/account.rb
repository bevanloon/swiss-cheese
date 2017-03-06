class Account < SwissCheese

  get '/sign-up' do
    erb :'account/sign-up'
  end

  post '/sign-up' do
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

  post '/sign-in' do
    user = User.find_by(user_name: params[:user]['user_name'])
    if user && user.authenticate(params[:user]['password'])
      session[:user_id] = user.id
      'Signed in'
    else
      'Uh oh'
    end
  end
end
