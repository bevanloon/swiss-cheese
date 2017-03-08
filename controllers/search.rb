class Search < SwissCheese
  get '/' do
    where = params["q"]
    @results = Post.where("draft = 'f' and body like '%#{where}%'")

    erb :"search/result"
  end
end
