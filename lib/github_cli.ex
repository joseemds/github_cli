defmodule GithubCli do
  @moduledoc """
  Documentation for GithubCli.
  """
  @options [switches: [user: :string, repo: :string], aliases: [n: :name, u: :user]]

  def main(args) do
    args
    |> OptionParser.parse(@options)
    |> GithubCli.Handler.parse()
  end
end
