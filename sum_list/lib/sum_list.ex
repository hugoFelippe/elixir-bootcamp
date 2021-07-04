defmodule SumList do
  @moduledoc false

  def call(list), do: sum(list, 0)

  def call_enum_map(list), do: Enum.map(list, fn el -> el + 1 end)

  def call_enum_any(list), do: Enum.any?(list, fn el -> el > 3 end)

  defp sum([], accumulator), do: accumulator

  defp sum([head | tail], accumulator) do
    accumulator = accumulator + head
    sum(tail, accumulator)
  end
end
