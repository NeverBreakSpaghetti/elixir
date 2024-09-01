defmodule AssertionTest do
  use ExUnit.Case, async: true # async: true -> That runs this test module concurrently with other tests in your suite

  test "the truth" do
    assert true
  end
end