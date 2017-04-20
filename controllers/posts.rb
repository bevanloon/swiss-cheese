class Posts < SwissCheese
  get '/' do
    @posts = Post.where(draft: false)
    erb :'posts/index'
  end

  get '/new' do
    must_login!
    erb :'posts/new'
  end

  get '/:id' do |id|
    @post = Post.find(id)
    erb :'posts/show'
  end

  post '/' do
    must_login!
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
