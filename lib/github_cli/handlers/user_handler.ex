defmodule GithubCli.Handler.UserHandler do
  alias GithubCli.Helpers.DisplayHelper

  @user_attrs ~w"name email repos_url url followers"

  def show_user({:ok, %{body: body}}) do
    body
    |> Map.take(@user_attrs)
    |> DisplayHelper.to_table()
  end
end
