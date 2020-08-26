defmodule GithubCli.Helpers.DisplayHelper do
  def to_table(map) do
    TableRex.Table.new([Map.keys(map), Map.values(map)], [], "User")
    |> TableRex.Table.render!()
    |> IO.puts()
  end
end
