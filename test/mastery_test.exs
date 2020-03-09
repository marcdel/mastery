defmodule MasteryTest do
  use ExUnit.Case, async: true
  doctest Mastery

  test "greets the world" do
    assert Mastery.hello() == :world
  end
end
