defmodule GithubCli do
  @moduledoc """
  Documentation for GithubCli.
  """
  @options [
    switches: [username: :string, repo: :string, issues: :boolean],
    aliases: [r: :repo, u: :username, i: :issues]
  ]

  def main(args) do
    args
    |> OptionParser.parse(@options)
    |> GithubCli.Commands.parse()
  end
end
