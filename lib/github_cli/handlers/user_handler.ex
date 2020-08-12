defmodule GithubCli.Handler.UserHandler do
  alias GithubCli.Helpers.DisplayHelper

  def show_user({:ok, %{body: body}}) do
    DisplayHelper.to_table(body)
  end
end
