class GithubFetchersController < ApplicationController

  def index
  @fetcher = GithubFetcher.new

  if params[:user_name]
  @entered = @fetcher.client.user(params[:user_name])
  end


  end





end
