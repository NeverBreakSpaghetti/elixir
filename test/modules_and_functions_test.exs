defmodule ModulesAndFunctionsTest do
  use ExUnit.Case, async: false # mocking IO this should not be async
  import Times
#  import Mock

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

  #not runnable from intellij IDE -> run from terminal with "mix test test/modules_and_functions_test.exs"
#  test_with_mock "ModulesAndFunctions-6 - guess", IO, [:passthrough], [] do
#    Chop.guess(273, 1..1000)
#    assert called IO.puts "is it 500"
#    assert called IO.puts "is it 250"
#    assert called IO.puts "is it 375"
#    assert called IO.puts "is it 312"
#    assert called IO.puts "is it 281"
#    assert called IO.puts "is it 265"
#    assert called IO.puts "is it 273"
#    assert called IO.puts "273"
#  end

  describe "ModulesAndFunctions-7" do
    #Convert a float to a string with two decimal digits. (Erlang)
    test "float_to_string" do
      assert MyLibraries.float_to_string(1.987) === "1.00"
    end

    test "get_env_variable" do
      assert MyLibraries.get_env_variable("HOME") === System.user_home()
    end

    test "get_extension" do
      assert MyLibraries.get_extension("dave/test.exs") === ".exs"
    end

    test "get_cwd" do
      assert MyLibraries.get_cwd() === File.cwd()
    end

#    test "convert_json_to_map" do
#    end


    test "execute_shell_echo_command" do
      assert MyLibraries.execute_shell_echo_command("Hello") === {"Hello\n", 0}
    end
  end

end