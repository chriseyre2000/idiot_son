defmodule IdiotSonTest do
  use ExUnit.Case
  doctest IdiotSon

  test "greets the world" do
    assert IdiotSon.hello() == :world
  end
end
