defmodule GithubCli.Handler.RepoHandler do
  def show_repo({:ok, %{body: body}}) do
    IO.inspect(body)
  end
end
