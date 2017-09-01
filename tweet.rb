
class Tweet

  attr_reader :message, :user


  ALL = []

  def self.all
    ALL
  end

  def initialize(message, user)
    @message = message
    @user = user
    ALL << self
  end

  def username
    user.username
  end

  def likes
    Like.all.select do |like|
      like.tweet == self
    end
  end

  def likers
    # should return an array of all the Tweet instances, this user has liked
    self.likes.map do |like|
      like.user
    end

  end


end
