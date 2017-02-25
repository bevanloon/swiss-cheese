class Posts < SwissCheese
  get '/' do
    erb :'posts/index'
  end

  get '/new' do
    erb :'posts/new'
  end

  post '/' do
    post = Post.new
    post.title = params["title"]
    post.body = params["body"]
    if post.save
      "success"
    else
      "fail"
    end
  end
end
