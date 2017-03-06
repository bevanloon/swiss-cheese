require './environment'
require './swiss_cheese'
require './controllers/posts'
require './controllers/search'
require './controllers/account'

require './models/post'
require './models/user'

map('/') { run SwissCheese }
map('/posts') { run Posts }
map('/search') { run Search }
map('/account') { run Account }
