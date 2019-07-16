defmodule Parser do
  @separator "_*:*_"
  @delimiter "_*|*_"

  def parse(str) do
    all = str
    |> String.split(@delimiter)
    |> Enum.map(&String.split(&1, @separator))

    res = Enum.map(all, fn [id, _times, seconds] ->
      "#{id}: #{seconds}"
    end)
    |> Enum.join("\n")

    res <> "\n"
  end
end
