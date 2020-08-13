defmodule GithubCli.Helpers.DisplayHelper do
  def to_table(m) do
    rex_table = TableRex.Table.new([Map.values(m)], [Map.keys(m)])
    {:ok, table} = TableRex.Table.render(rex_table)
    IO.inspect(rex_table)
    IO.puts(table)
  end
end
