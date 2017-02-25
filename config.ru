
require './environment'
require './swiss_cheese'
require './controllers/posts'

require './models/post'


map('/') { run SwissCheese }
map('/posts') { run Posts }
