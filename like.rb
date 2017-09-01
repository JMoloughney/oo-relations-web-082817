class Like

  attr_reader :user, :tweet

  ALL = []

  def self.all
    ALL
  end

  def initialize(tweet, user)
    @tweet = tweet
    @user = user
    ALL << self
  end

end
