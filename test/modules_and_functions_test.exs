defmodule ModulesAndFunctionsTest do
  use ExUnit.Case
  import Times

  describe "ModulesAndFunctions-1" do
    test "triple" do
      assert triple(3) === 9
    end
  end

  describe "ModulesAndFunctions-3" do
    test "triple" do
      assert quadruple(3) === 12
    end
  end

end