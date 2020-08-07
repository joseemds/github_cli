defmodule GithubCli do
  @moduledoc """
  Documentation for GithubCli.
  """
  @options [switches: [username: :string, repo: :string], aliases: [r: :repo, u: :username]]

  def main(args) do
    args
    |> OptionParser.parse(@options)
    |> GithubCli.Handler.parse()
  end
end
