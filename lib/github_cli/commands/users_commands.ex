defmodule GithubCli.Commands.UserCommands do
  alias GithubCli.Handler.UserHandler

  @url "https://api.github.com/users/"

  def get_user(username) do
    {:ok, response} = HTTPoison.get(@url <> username)

    response |> UserHandler.show_user()
  end
end
