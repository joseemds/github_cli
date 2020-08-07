defmodule GithubCli.Commands do
  @help """
   Usage:

   ghcli --user <username> --repo <repository name>
  """

  def help do
    IO.puts(@help)
  end

  def get_user(username) do
    GithubCli.Requests.Users.get_user(username)
  end
end
