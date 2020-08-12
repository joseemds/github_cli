defmodule GithubCli.Commands.UserCommands do
  use Tesla

  alias GithubCli.Handler.UserHandler

  plug(Tesla.Middleware.BaseUrl, "https://api.github.com/users/")
  plug(Tesla.Middleware.JSON)

  def get_user(username) do
    get(username)
  end
end
