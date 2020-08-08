defmodule GithubCli.Commands do
  @help """
   Usage:

   ghcli --user <username> --repo <repository name>
  """

  def help do
    IO.puts(@help)
  end

  def parse(argv) do
    case argv do
      {[username: username], _, _} -> GithubCli.Commands.UserCommands.get_user(username)
      {[help: true], _, _} -> GithubCli.Commands.help()
      {_, _, _} -> GithubCli.Commands.help()
    end
  end
end
