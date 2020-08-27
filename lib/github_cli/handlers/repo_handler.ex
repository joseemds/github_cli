defmodule GithubCli.Handler.RepoHandler do
  def show_repo({:ok, %{body: body}}) do
    IO.inspect(body)
  end

  def show_repo_issues({:ok, %{body: body}}) do
    IO.inspect(body)
  end
end
