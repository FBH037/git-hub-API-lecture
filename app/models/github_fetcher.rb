class GithubFetcher
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(
    :access_token => Rails.application.secrets.access_token)

    
  end

end
