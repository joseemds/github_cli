defmodule GithubCli.Commands.ReposCommands do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://api.github.com/repos/")
  plug(Tesla.Middleware.JSON)
end
