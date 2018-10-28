class RepositoriesController < ApplicationController
  def index
<<<<<<< HEAD
    @service = GithubService.new(@access_token)
=======
    @service = GithubService.new(session[:token])
>>>>>>> 7ff09cfc9b06c915108a5b741a9a40c572953782
    @repos_array = @service.get_repos
  end

  def create
    response = Faraday.post "https://api.github.com/user/repos", {name: params[:name]}.to_json, {'Authorization' => "token #{session[:token]}", 'Accept' => 'application/json'}
    redirect_to '/'
  end
end
