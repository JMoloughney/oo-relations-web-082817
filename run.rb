require_relative './user'
require_relative './tweet'
require 'pry'



coffee_dad = User.new('coffee_dad')
tea_uncle = User.new('tea_uncle')

coffee_dad.post_tweet('having coffee')
coffee_dad.post_tweet('great coffee')
tea_uncle.post_tweet('great tea')
coffee_dad.post_tweet('coffee #')


binding.pry


'bye'
