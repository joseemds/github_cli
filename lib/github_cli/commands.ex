defmodule GithubCli.Commands do
  @help """
   Usage:

   ghcli --user <username> --repo <repository name>
  """

  def help do
    IO.puts(@help)
  end
end
