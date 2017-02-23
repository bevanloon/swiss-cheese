class Post < SwissCheese
  get '/' do
    erb :'posts/index'
  end

  get '/new' do
    erb :'posts/new'
  end

  post '/' do
  end
end
