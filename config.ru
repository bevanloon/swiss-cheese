require './environment'
require './swiss_cheese'
require './controllers/post'
map('/') { run SwissCheese }
map('/posts') { run Post }
