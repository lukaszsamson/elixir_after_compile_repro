defmodule AfterCompileErrorTest do
  use ExUnit.Case
  doctest AfterCompileError

  test "greets the world" do
    assert AfterCompileError.hello() == :world
  end
end
