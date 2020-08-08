defmodule GithubCli.Handler do
  def get_user(username) do
    GithubCli.Requests.Users.get_user(username)
  end
end
