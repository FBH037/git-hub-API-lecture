class GithubFetchersController < ApplicationController

  def index
    @fetcher = GithubFetcher.new
    # binding.pry
    if params[:user_name]
      @entered = @fetcher.client.user(params[:user_name])
    end
    if params[:user_name_for_repos]
      @repos = @fetcher.client.repositories(params[:user_name_for_repos])
    end
  end

end
