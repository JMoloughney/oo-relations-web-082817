
class User

  attr_reader :username


  def initialize(username)
    @username = username
  end

  def tweets
    # gets it's information about what tweets belong to this user from the Tweet model
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def post_tweet(message)
    Tweet.new(message, self)
    # # create a new tweet
    # tweet = Tweet.new(message, self)
    # #add it to the user's colelction
    # @tweets << tweet
  end

  def likes
    Like.all.select do |like|
      like.user == self
    end
  end

  def liked_tweets
    # should return an array of all the Tweet instances, this user has liked
  end

end
