defmodule GithubCliTest do
  use ExUnit.Case
  doctest GithubCli

  test "greets the world" do
    assert GithubCli.hello() == :world
  end
end
