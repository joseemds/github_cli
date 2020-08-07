defmodule GithubCli.Requests.Users do
  @url "https://api.github.com/users/"

  def get_user(username) do
    {:ok, response} = HTTPoison.get(@url <> username)
    IO.inspect(response)
  end
end
