defmodule GithubCli.Commands.ReposCommands do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://api.github.com/repos/")
  plug(Tesla.Middleware.JSON)

  def get_repo(username, repo_name) do
    get("#{username}/#{repo_name}")
  end

  def get_issues_from_repo(username, repo_name) do
    get("#{username}/#{repo_name}/issues")
  end
end
