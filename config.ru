require './environment'
require './swiss_cheese'
require './controllers/posts'
require './controllers/search'

require './models/post'

map('/') { run SwissCheese }
map('/posts') { run Posts }
map('/search') { run Search }
