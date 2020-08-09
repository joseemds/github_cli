defmodule GithubCli.Helpers.DisplayHelper do
  def to_table(m) do
    keys = Map.keys(m)

    for key <- keys do
      IO.puts("""
      Key | Value
      #{key} | #{Map.get(m, key)}
      """)
    end
  end
end
