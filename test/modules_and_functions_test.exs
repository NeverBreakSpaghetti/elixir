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

  describe "ModulesAndFunctions-4" do
    test "sum" do
      assert Sum.of(1) === 1
      assert Sum.of(5) === 15 #without import
    end
  end

end