defmodule FunctionsTest do
  use ExUnit.Case
  import Functions

  describe "Functions-1" do
    test "list_concat" do
      assert list_concat([:a, :b], [:c, :d]) == [:a, :b, :c, :d]
    end

    test "sum" do
      assert sum(1,2,3) === 6
    end

    test "pair_tuple_to_list" do
      assert pair_tuple_to_list({1234, 5678}) === [1234, 5678]
    end
  end

  describe "Functions-2" do
    test "fizz_buzz" do
      assert fizz_buzz({0,0,3}) === "FizzBuzz"
      assert fizz_buzz({0,1,3}) === "Fizz"
      assert fizz_buzz({1,0,3}) === "Buzz"
      assert fizz_buzz({1,2,3}) === 3
    end
  end

  describe "Functions-3" do
    test "complete_fizz_buzz" do
      assert complete_fizz_buzz(10) === "Buzz"
      assert complete_fizz_buzz(11) === 11
      assert complete_fizz_buzz(12) === "Fizz"
      assert complete_fizz_buzz(13) === 13
      assert complete_fizz_buzz(14) === 14
      assert complete_fizz_buzz(15) === "FizzBuzz"
      assert complete_fizz_buzz(16) === 16
    end
  end

  describe "Functions-4" do
    test "prefix" do
      assert prefix("Elixir").("Rocks") === "Elixir Rocks"
      assert prefix("Mrs").("Smith") === "Mrs Smith"
      mrs = prefix("Mrs")
      assert mrs.("Smith") === "Mrs Smith"
    end
  end

end