defmodule FunctionsTest do
  use ExUnit.Case
  import Functions

  test "list concat" do
    assert list_concat([:a, :b], [:c, :d]) == [:a, :b, :c, :d]
  end

end