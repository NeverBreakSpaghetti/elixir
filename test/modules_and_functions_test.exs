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

  describe "ModulesAndFunctions-5" do
    test "gdc" do
      assert Gdc.of(2,0) === 2
      assert Gdc.of(2,3) === 1
      assert Gdc.of(3,9) === 3
      assert Gdc.of(9,3) === 3
    end
  end

end