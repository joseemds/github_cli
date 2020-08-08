defmodule GithubCli.Handler.UserHandler do
  def show_user(%{body: body}) do
    Jason.decode(body) |> IO.inspect()
  end
end
