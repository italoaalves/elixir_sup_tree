defmodule ElixirSupTest do
  use ExUnit.Case
  doctest ElixirSup

  test "greets the world" do
    assert ElixirSup.hello() == :world
  end
end
