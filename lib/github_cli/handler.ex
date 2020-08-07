defmodule GithubCli.Handler do
  def parse(argv) do
    case argv do
      {[username: username], _, _} -> GithubCli.Commands.get_user(username)
      {[help: true], _, _} -> GithubCli.Commands.help()
      {_, _, _} -> GithubCli.Commands.help()
    end
  end
end
