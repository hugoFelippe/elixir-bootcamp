defmodule ListFilter do
  require Integer
  @moduledoc false

  def int_parse(x) do
    if is_integer(x) do
      x
    else
      case Integer.parse(x, 10) do
        {num, ""} -> num
        :error -> :error
      end
    end
  end

  def odd_count(list) do
    parsed = Enum.map(list, fn x -> ListFilter.int_parse(x) end)

    length(Enum.filter(parsed, fn
      :error -> false
      num -> Integer.is_odd(num)
    end))
  end
end
