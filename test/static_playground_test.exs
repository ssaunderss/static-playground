defmodule StaticPlaygroundTest do
  use ExUnit.Case
  doctest StaticPlayground

  test "greets the world" do
    assert StaticPlayground.hello() == :world
  end
end
