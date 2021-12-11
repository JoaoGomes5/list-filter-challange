defmodule ListFilterTest do
  use ExUnit.Case
  describe "call/1" do

    test "i should be able to return list of impar numbers" do
      list = ["ola", "2", "1", "19", "12"]

      response = ListFilter.call(list)

      expected_response = [1, 19]

      assert response == expected_response
    end

  end
end
