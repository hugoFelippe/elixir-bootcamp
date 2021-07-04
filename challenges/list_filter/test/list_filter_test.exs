defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "Count odd numbers" do
    list1 = ["1", "3", "6", "13", "banana", "55", "verde"]
    list2 = ["2", "10", "7", "14", "maça", "57", "vermelho"]
    list3 = ["2", "9", "8", "15", "abacaxi", "58", "azul"]
    list4 = [1,2,3,546,74,7]
    list5 = []

    assert ListFilter.odd_count(list1) == 4
    assert ListFilter.odd_count(list2) == 2
    assert ListFilter.odd_count(list3) == 2
    assert ListFilter.odd_count(list4) == 3
    assert ListFilter.odd_count(list5) == 0
  end
end
