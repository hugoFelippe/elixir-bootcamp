defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "return sum list" do
      list = [1, 2, 3]
      result = SumList.call(list)
      result_expected = 6
      assert result == result_expected
    end
  end
end
