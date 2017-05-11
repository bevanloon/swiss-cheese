class Search < SwissCheese
  get '/' do
    where = params["q"]
    @query = params["q"]
    @results = Post.where("draft = 'f' and body like '%#{where}%'")
    @recent_searches = RecentSearch.order("id DESC").limit(5)

    # Add this search to the list of recent searches
    RecentSearch.create(query: params["q"]) unless params["q"].nil?

    erb :"search/result"
  end
end
