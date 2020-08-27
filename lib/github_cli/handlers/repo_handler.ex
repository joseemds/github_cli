defmodule GithubCli.Handler.RepoHandler do
  alias TableRex.Table

  alias GithubCli.Helpers.DisplayHelper
  @repo_info ~w"name open_issues_count license"

  def show_repo({:ok, %{body: body}}) do
    body
    |> Map.take(@repo_info)
    |> DisplayHelper.to_table()
  end

  def show_repo_issues({:ok, %{body: body}}) do
    IO.inspect(body)
  end
end
