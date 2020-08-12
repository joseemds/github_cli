defmodule GithubCli.Commands do
  alias GithubCli.Commands.UserCommands
  alias GithubCli.Handler.UserHandler

  @help """
   Usage:

   ghcli --user <username> --repo <repository name>
  """

  def help do
    IO.puts(@help)
  end

  def parse(argv) do
    case argv do
      {[username: username], _, _} -> UserCommands.get_user(username) |> UserHandler.show_user()
      {[help: true], _, _} -> GithubCli.Commands.help()
      {_, _, _} -> GithubCli.Commands.help()
    end
  end
end
