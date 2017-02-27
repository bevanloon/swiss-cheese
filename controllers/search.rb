class Search < SwissCheese
  get '/' do
    where = params["q"]
    @results = Post.where("body like '%#{where}%'")

    erb :"search/result"

  end
end
