class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @messages = []
    if params[:u_n]
      @tweets = @tweet.user_tweets(params[:u_n])
    end
    if params[:message]
      @tweet.make_tweet(params[:message])
      @messages << "Tweeted"
    end

    @home_feed =@tweet.home_time
  end




end
