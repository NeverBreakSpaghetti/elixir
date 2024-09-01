defmodule ModulesAndFunctionsTest do
  use ExUnit.Case
  import Times

  describe "ModulesAndFunctions-1" do
    test "triple" do
      assert triple(3) === 9
    end
  end
end