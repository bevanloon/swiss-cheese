class Posts < SwissCheese
  get '/' do
    @posts = Post.where(draft: false)
    erb :'posts/index'
  end

  get '/new' do
    erb :'posts/new'
  end

  post '/' do
    post = Post.new
    post.title = params["title"]
    post.body = params["body"]
    if params["draft"]
      post.draft = true
    else
      post.draft = false
    end
    if post.save
      "success"
    else
      "fail"
    end
  end
end
