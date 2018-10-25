class RepositoriesController < ApplicationController
  def index
    @service = GithubService.new(@access_token)
    @repos_array = @service.get_repos
  end

  def create
    response = Faraday.post "https://api.github.com/user/repos", {name: params[:name]}.to_json, {'Authorization' => "token #{session[:token]}", 'Accept' => 'application/json'}
    redirect_to '/'
  end
end
