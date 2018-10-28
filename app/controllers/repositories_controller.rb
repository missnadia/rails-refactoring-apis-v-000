class RepositoriesController < ApplicationController
  def index
    @service = GithubService.new({"access_token" => "1"})
    @repos_array = @service.get_repos
  end

  def create
    @service = GithubService.new({"access_token" => "1"})
    @repos_array = @service.create_repo(name)
    redirect_to '/'
  end
end
