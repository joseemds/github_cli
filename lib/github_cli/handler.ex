defmodule GithubCli.Handler do
  def parse(argv) do
    case argv do
      {[help: true], _, _} -> GithubCli.Commands.help()
      {_, _, _} -> GithubCli.Commands.help()
    end
  end
end
