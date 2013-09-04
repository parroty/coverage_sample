defmodule CoverageSampleTest do
  use ExUnit.Case

  test "plus" do
    assert(CoverageSample.plus(3, 5) == 8)
  end

  test "minus" do
    assert(CoverageSample.minus(3, 5) == -2)
  end
end
