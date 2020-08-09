defmodule GithubCli.Handler.UserHandler do
  alias GithubCli.Helpers.DisplayHelper

  def show_user(%{body: body}) do
    {:ok, json} = Jason.decode(body)

    DisplayHelper.to_table(json)
  end
end
