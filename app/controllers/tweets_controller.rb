class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @messages = []
    unless params[:entered].blank?
      @tweets = @tweet.user_tweets(params[:entered][:u_n])
    end
    if params[:message]
      @tweet.make_tweet(params[:message])
      @messages << "Tweeted"
    end

    @home_feed =@tweet.home_time
  end




end
