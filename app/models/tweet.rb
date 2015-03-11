class Tweet

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.secrets.consumer_key
      config.consumer_secret = Rails.application.secrets.consumer_secret
      config.access_token = Rails.application.secrets.access_token_twitter
      config.access_token_secret = Rails.application.secrets.access_token_secret
    end
  end

  def user_tweets(user_id)
    @client.user_timeline(user_id)
  end

  def make_tweet(the_tweet)
    @client.update(the_tweet)
  end

  def home_time
    @client.home_timeline
  end
end
